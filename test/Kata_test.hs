{-# OPTIONS_GHC -F -pgmF htfpp #-}

import Kata
import Test.Framework

main = htfMain htf_thisModulesTests

test_greet = assertEqual "Hello!" (greet person) where
    person = Person "Hello!"

prop_greet :: String -> Bool
prop_greet string = string == (greet (Person string))
