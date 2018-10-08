module Geometry 
(  sphereVolume
 , sphereArea
 , cubeVolume
 , cubeArea
 , cuboidVolume
 , cuboidArea
 ) where
 
 sphereVolume :: Float -> Float
 sphereVolume radius = (4.0/3.0) * pi * (radius ^ 3)
 
 sphereArea :: Float -> Float
 sphereArea radius = 4 * pi * (radius ^ 2)
 
 reactangleArea :: Float -> Float -> Float
 reactangleArea a b = a * b
 
 cuboidArea :: Float -> Float -> Float -> Float
 cuboidArea a b c = reactangleArea a b * 2 + reactangleArea b c * 2 + reactangleArea c a * 2
 
 cuboidVolume :: Float -> Float -> Float -> Float
 cuboidVolume a b c = reactangleArea a b * c
 
 cubeVolume :: Float -> Float
 cubeVolume side = cuboidVolume side side side
 
 cubeArea :: Float -> Float
 cubeArea side = cuboidArea side side side

