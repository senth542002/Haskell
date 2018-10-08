
module AbsoluteValue where

absoluteValueOf :: Integer -> Integer
absoluteValueOf value = if (2 * value) > value then value else -value