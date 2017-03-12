module Entities.Core exposing (ID, Entity)


type alias ID =
    String


type alias Entity a =
    { a | id : ID }
