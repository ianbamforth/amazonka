{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.DeleteHSMConfiguration
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified Amazon Redshift HSM configuration.
--
-- /See:/ <http://docs.aws.amazon.com/redshift/latest/APIReference/API_DeleteHSMConfiguration.html AWS API Reference> for DeleteHSMConfiguration.
module Network.AWS.Redshift.DeleteHSMConfiguration
    (
    -- * Creating a Request
      DeleteHSMConfiguration
    , deleteHSMConfiguration
    -- * Request Lenses
    , dhcHSMConfigurationIdentifier

    -- * Destructuring the Response
    , DeleteHSMConfigurationResponse
    , deleteHSMConfigurationResponse
    ) where

import           Network.AWS.Prelude
import           Network.AWS.Redshift.Types
import           Network.AWS.Request
import           Network.AWS.Response

-- |
--
-- /See:/ 'deleteHSMConfiguration' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dhcHSMConfigurationIdentifier'
newtype DeleteHSMConfiguration = DeleteHSMConfiguration'
    { _dhcHSMConfigurationIdentifier :: Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DeleteHSMConfiguration' smart constructor.
deleteHSMConfiguration :: Text -> DeleteHSMConfiguration
deleteHSMConfiguration pHSMConfigurationIdentifier_ =
    DeleteHSMConfiguration'
    { _dhcHSMConfigurationIdentifier = pHSMConfigurationIdentifier_
    }

-- | The identifier of the Amazon Redshift HSM configuration to be deleted.
dhcHSMConfigurationIdentifier :: Lens' DeleteHSMConfiguration Text
dhcHSMConfigurationIdentifier = lens _dhcHSMConfigurationIdentifier (\ s a -> s{_dhcHSMConfigurationIdentifier = a});

instance AWSRequest DeleteHSMConfiguration where
        type Sv DeleteHSMConfiguration = Redshift
        type Rs DeleteHSMConfiguration =
             DeleteHSMConfigurationResponse
        request = postQuery
        response
          = receiveNull DeleteHSMConfigurationResponse'

instance ToHeaders DeleteHSMConfiguration where
        toHeaders = const mempty

instance ToPath DeleteHSMConfiguration where
        toPath = const "/"

instance ToQuery DeleteHSMConfiguration where
        toQuery DeleteHSMConfiguration'{..}
          = mconcat
              ["Action" =:
                 ("DeleteHsmConfiguration" :: ByteString),
               "Version" =: ("2012-12-01" :: ByteString),
               "HsmConfigurationIdentifier" =:
                 _dhcHSMConfigurationIdentifier]

-- | /See:/ 'deleteHSMConfigurationResponse' smart constructor.
data DeleteHSMConfigurationResponse =
    DeleteHSMConfigurationResponse'
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DeleteHSMConfigurationResponse' smart constructor.
deleteHSMConfigurationResponse :: DeleteHSMConfigurationResponse
deleteHSMConfigurationResponse = DeleteHSMConfigurationResponse'
