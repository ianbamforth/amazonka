{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeCommit
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- AWS CodeCommit
--
-- This is the /AWS CodeCommit API Reference/. This reference provides
-- descriptions of the AWS CodeCommit API.
--
-- You can use the AWS CodeCommit API to work with the following objects:
--
-- -   Repositories
-- -   Branches
-- -   Commits
--
-- For information about how to use AWS CodeCommit, see the /AWS CodeCommit
-- User Guide/.
--
-- /See:/ <http://docs.aws.amazon.com/codecommit/latest/APIReference/Welcome.html AWS API Reference>
module Network.AWS.CodeCommit
    (
    -- * Service Description
      CodeCommit

    -- * Error Matchers
    -- $errors
    , _InvalidContinuationTokenException
    , _EncryptionKeyNotFoundException
    , _RepositoryNameExistsException
    , _MaximumRepositoryNamesExceededException
    , _InvalidRepositoryDescriptionException
    , _BranchNameRequiredException
    , _InvalidBranchNameException
    , _EncryptionKeyUnavailableException
    , _InvalidOrderException
    , _BranchDoesNotExistException
    , _RepositoryNamesRequiredException
    , _RepositoryDoesNotExistException
    , _EncryptionIntegrityChecksFailedException
    , _EncryptionKeyAccessDeniedException
    , _BranchNameExistsException
    , _EncryptionKeyDisabledException
    , _InvalidSortByException
    , _CommitIdRequiredException
    , _InvalidCommitIdException
    , _CommitDoesNotExistException
    , _RepositoryLimitExceededException
    , _InvalidRepositoryNameException
    , _RepositoryNameRequiredException

    -- * Operations
    -- $operations

    -- ** UpdateRepositoryName
    , module Network.AWS.CodeCommit.UpdateRepositoryName

    -- ** GetBranch
    , module Network.AWS.CodeCommit.GetBranch

    -- ** UpdateRepositoryDescription
    , module Network.AWS.CodeCommit.UpdateRepositoryDescription

    -- ** ListBranches
    , module Network.AWS.CodeCommit.ListBranches

    -- ** CreateBranch
    , module Network.AWS.CodeCommit.CreateBranch

    -- ** UpdateDefaultBranch
    , module Network.AWS.CodeCommit.UpdateDefaultBranch

    -- ** CreateRepository
    , module Network.AWS.CodeCommit.CreateRepository

    -- ** ListRepositories
    , module Network.AWS.CodeCommit.ListRepositories

    -- ** GetRepository
    , module Network.AWS.CodeCommit.GetRepository

    -- ** DeleteRepository
    , module Network.AWS.CodeCommit.DeleteRepository

    -- ** BatchGetRepositories
    , module Network.AWS.CodeCommit.BatchGetRepositories

    -- * Types

    -- ** OrderEnum
    , OrderEnum (..)

    -- ** SortByEnum
    , SortByEnum (..)

    -- ** BranchInfo
    , BranchInfo
    , branchInfo
    , biCommitId
    , biBranchName

    -- ** RepositoryMetadata
    , RepositoryMetadata
    , repositoryMetadata
    , rmRepositoryDescription
    , rmLastModifiedDate
    , rmARN
    , rmCloneURLHTTP
    , rmAccountId
    , rmDefaultBranch
    , rmRepositoryId
    , rmCreationDate
    , rmRepositoryName
    , rmCloneURLSSH

    -- ** RepositoryNameIdPair
    , RepositoryNameIdPair
    , repositoryNameIdPair
    , rnipRepositoryId
    , rnipRepositoryName
    ) where

import           Network.AWS.CodeCommit.BatchGetRepositories
import           Network.AWS.CodeCommit.CreateBranch
import           Network.AWS.CodeCommit.CreateRepository
import           Network.AWS.CodeCommit.DeleteRepository
import           Network.AWS.CodeCommit.GetBranch
import           Network.AWS.CodeCommit.GetRepository
import           Network.AWS.CodeCommit.ListBranches
import           Network.AWS.CodeCommit.ListRepositories
import           Network.AWS.CodeCommit.Types
import           Network.AWS.CodeCommit.UpdateDefaultBranch
import           Network.AWS.CodeCommit.UpdateRepositoryDescription
import           Network.AWS.CodeCommit.UpdateRepositoryName
import           Network.AWS.CodeCommit.Waiters

{- $errors
Error matchers are intended to be used with the <http://hackage.haskell.org/package/lens lens>
library functions provided by the "Control.Exception.Lens" module. This allows
the user to catch (and rethrow) service specific errors returned by 'CodeCommit'.
-}

{- $operations
Some AWS operations return results that are incomplete and require subsequent
requests in order to obtain the entire result set. The process of sending
subsequent requests to continue where a previous request left off is called
pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
1000 objects at a time, and you must send subsequent requests with the
appropriate Marker in order to retrieve the next page of results.

Operations that have an 'AWSPager' instance can transparently perform subsequent
requests, correctly setting Markers and other request facets to iterate through
the entire result set of a truncated API operation. Operations which support
this have an additional note in the documentation.

Many operations have the ability to filter results on the server side. See the
individual operation parameters for details.
-}

{- $waiters
Waiters poll by repeatedly send a request until some remote success condition
specified by the 'Wait' configuration is fulfilled. The 'Wait' configuration
specifies how many attempts should be made, in addition to delay and retry strategies.
-}

{- $pager
This operation can return paginated results.
-}
