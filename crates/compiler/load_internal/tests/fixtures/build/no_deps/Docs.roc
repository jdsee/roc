## A module for docs tests
module [makeUser, getNameExposed]

## This is a user
User : { name : Str }

## Makes a user
##
## Takes a name Str.
makeUser : Str -> User
makeUser = \name ->
    { name }

## Gets the user's name
getName = \a -> a.name

getNameExposed = getName
