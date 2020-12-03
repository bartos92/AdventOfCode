module Day3 where

inputData, inputDataTest :: [String]
inputDataTest = ["..##.......","#...#...#..",".#....#..#.","..#.#...#.#",".#...##..#.","..#.##.....",".#.#.#....#",".#........#","#.##...#...","#...##....#",".#..#...#.#"]
inputData = [".#......#..####.....#..#.......","#.#...#...#..#.#...#.#...##.##.","#.#....#..........#...##.....##","#.#.#.....##......#.#.......###","..#..###....#.#....#.#.#..#....",".......#.#....##..##...#...#...","..#..#..#..###.......#.....#.#.",".#.......#...##...##.##......##","#.#.##..##.#..#....#..###..#.#.","#.....#.#.........#.....##.#.#.","..#.#....##..#...#...##........","......#....#..##.#.#......###..",".......#.......#......##...#...",".##.....#.......#...###.....##.",".#...#.##..##.#..##....#.......","..#......##...#..#...#.#.##.###",".##.##.....##....#..#......#.#.",".#.....#..###..#.##.#.....##.#.","......##..........#..........#.",".##....#.....#..##.#..#.#..###.","..##.......#....#...##...#..#..",".##...#.....#.###.#.#..#...#.#.",".....##.#.##..##...#...........","..#..###.##.#.#.###...###..#.#.",".#........#..#.#........#.#...#","....##.......#....#.#.##.#.....","....##........######..###..#.#.","#.#.#............#.......#..#..","...##...#.##.....#.#..#......#.","......#.##.#....##..#.#..###...","##.....#.#....#....#.##.#.###..","#..#..#..##.#..##.##.##.#.##...",".###.####..#..#........#.....##",".......##..#.......#...........",".##...#............#.#.##...#..","....##.....#...##..#..#.#..###.","...#.....#####.#..#...##....##.","#.....#.#.#....##.......##.#.#.","......#.#..#.##.#######......#.","#.##...##....#..###.#.......#..",".....##...#....#...#....##.##.#","....###......#...###..#......##","..#...##..##.######..#.#......#","......##....#....##..#......##.",".#...#..##..#.###.#......#....#","##....##..#..####.#.....#...#..",".#.......#...#.......##......#.","......#...#...#........#.......",".#........#.###...#..####.#..#.","##...#.#............#.....###..",".....###.#.##...........###..#.",".#.#...#.....#.#.##..##...####.","..##.......#..#.##.#....#.....#",".#..#.#..####.....###.#.....#..","..#..###.....####..#.##.#.#.##.",".###..#.....#......#...####....","...#.#..#.#..#...#...#....##.##","..###....#.##.....#..........#.","###...#####......##............","..###.....#........##.#...#..#.","..##.##.#.....##........##..#.#","##..#.#...#.#..#..###.#....#..#","....#..#.#.....#..#####...#....","....#.........#......##.##.....",".#...####.##......##..##.#..#.#","...#...#.##..#...##..###...#...","###...#.....#.##.###.###..#.#..","..#......#.###.....#..##.#...#.","#.....##.########...#####....#.","........##..#..##..##.#........","....#.######....##..#..#.##..#.","#.......#..##..#..#.#.#..##.##.","...#.#..#..#.......#......###.#",".#.#..#.#..#.##.#.............#","#....#.##.#.#.....#..#.#..#....","...###..#...#....#.........#.#.",".#..#.....##..#.#..#.#.......#.","..#...##...#......#......####..","....#..#.......#.......#.#..#..","#...#..#...........#.#..#.....#","#...#.#.......#...#....###....#",".#..#.#.##....#......#........#","..#...#..##..#..#..#..#...#.#..","..#.#.........#....#....##.....","##.....##.#.#.#.........##.....",".##...#.##...........#...#...##",".##..##.#.#..........##..##....","#....#....#.#...#.#..#....#.#..","####....##.....#..##.###.......","#..#....#......##.#.#....#.....",".....#....#.###.##.........###.","#.......#.####..#..#..##.......","##.#.......#..##..#....#..#.#..","..###...#.#...#.....##.##.####.","....#...#.#....#..#..#.....#.##","#.....##.#.#..#.##..#..##......","................###..#....##...","..#.##.....#..........##.#...#.","..#.#..#.#....#.#.#..#..#..#.#.","#...#..##.#.#...#..#...#..#....","#..#.#.........#..###........#.",".#...#.............#..###..#..#","#.........#.#..#...#.#.....#..#","....#..#..#.#.#...#...#.....##.","##...###.#.####..#......#...#..","..#..##...#.#......#.#.......#.","#......###....##.#.##..........","#####....###..#...............#","##.#...####....#....#...#....#.",".#.......#..#.....#...#.....###","...#..#.#.#....##......##...#..","...#.....#...#.##.#..#.#....#..","#...###....#...#.#....#........",".#.......#........#...##.##.##.",".....#....#...##.....##...###.#","....#....#.#..#...##.##.##.....",".......#............#...#.#..#.",".#............#.....##.......#.","........#....#....##......##.##",".......##..#.#..#.##..###..##.#","#..##..##.........####.#.###...","#....#..#...##...#.............","#...#...###..........##..#..#..","....#...#..#.....##...#........","#.....#......#.#.....#...#..#..","..#.....#.....#....#..#........","..#..#.....#.#.........#..###..","................###..#.#....#..","#.....#.....#.#.#.#.#..#...#.#.","#....#....#.#..........#.#....#","....#..#......#..##.#...##.....","..#.#...#.####....#.#..#.#..#..",".........##......#.....##......","##.#.###.#.....#.....####.#..#.",".....#.....#..#....#..###.#....","##..#.#...#.##....#....#.......",".....#......#.#...##..#.#......","....##..#...#...##..##.#....#.#","............#..........##.#....","##..#..#.##..##..#.#....#.#.#..",".......#.#...#...#.#...#..#....","#....#.#...#...#........#..#...","...........#.......#...##..###.",".#..##......#.##.........##..#.","...#...#...###.#.##....##.#..#.","#...#..#.#.#.....##..#.......#.",".##..#.###.##......#.#....#.#.#","..#....#.......#..#..#.#.#.##..","#...#...###...###.........#....",".#.#...#.....##.#.#..#....#.##.",".........#.#.##.....#.#.###....","...#.#...#......#...####......#","...##..##....##......##...###..","###...#..#.......##.....#....#.","...#..#..#..###...##.##..#..#..","...#......#......##..#.#.##..#.","...#.........#....#.#....#.#...","##................#..#.#.....#.","....#.##...#..#.##...##.#.....#","......#..##.##..###.#..#.##.##.",".#.#...###.....###.....##...###",".##.....#.#.#..#..###..#..#..#.","#.......#..#..#....##.....#....","...#.#.##..#..#......##.##...#.","....##.#......#...#..#..#......",".####.#..#.....#..##.#...##..##","..#..#...#..........###..#....#",".#.#.##.##...#............#....","........##..##......#.##..#.###","...#.#....###......##.......#..","..##...#...#.#..#.....#.....#..","##..#...###..#..#.#.#...#...#..",".....#..#....##.....##.....###.","....##...###.#..#.#....##..#..#","#......#...#....#......#...##..","....#.##...#.#......#.#.##...#.",".......#.....#...#####...#.#...","...#.....##.#............#.....","...#.#........#.#.#..#.........","....###......#.#.#..#.####.#..#","#.....#.#.#.....#.#.#.....#..#.","..##.##......#...#.#...........","###..###....#.#####......###...","..##..............##.#.#....#.#","#..#...#..........#..#.#.#..###","##.###............#....#.#...#.","#.#..#.#..##.#.#....#...#......","#....#...#..##.....#..#.#..###.","..#.....#.#....#.#..#.##.#..##.","...##...#.#.##...#....###....#.","......###.####.......#..#.#.#.#",".#..............##........#....","...##.##...##....#..#.......#..",".....#.....#....###...#..#..#.#",".#.....#..#.....#......#.....##","#.#.##.#..#..#.....#.##..###...","..#......#...##.###..#.#...#..#","......#.....#...##......#......","##.#........#..........#.....#.","#........##.#............##....","...#......##...#.#.....##......","...##.......#....#.#..#.#.###..","..#....##..##.##.....###....#..","..#...#.#...#.....#..........#.","......#...#...#.#.##.#...#.#.#.",".#...#......#.##........#......",".##.##..#....#...#.#...##......","#..#......#.#...........#....#.","....##.#....#...#..#....#.#..##","#....##.##....#.#..##.#........",".##.##.#....##.....#..#....#..#","...#...#.....###.#.##..........","....#...#....##.......###......","#.........#......#.#.......#...","#..........#..##..#.#..........",".....#.......#..##.##....##...#","........................#.#....","#..#.........#.............#..#","#..#.....#.......#....#....#.#.","..##..##.......##....#...#.....",".##......#..##......#.###......","...#.#........#.......##..###..","..##...###.###......#...#....##","#...#...#.....###.#.#.#..#.....","#....#.........#..##...#...##..","#..###..#.#.#.##.#..#.#....#.##","#...#.#.....#.###.#.......#....","..##..#..#....#.#...........#.#","#.........#.#......#...##......",".######......#..#....#.#.#....#","##..#.#..####.###.........#....","###########.....##.##...#..#...","#...##.#.#....#.#....#......#..","...#..##..#..##..#......#....#.",".#....#...#....#.#..##....##...","#..#.#............#....#.#...#.","...#...#..#.#.##......#..#.#...","#.#...##.....#..#.##......####.",".#.#..##..#.....#.#..#.##......","#.#.##......##.....#..#.#..#...","#..##...#.##.#.......#.##......","..#.......#.#.#...##..##...#...",".#...#..#..#.#.........#..##...","#..#.......#....#.#...#.###...#",".......#..#.......##.#.#...#.#.",".#.................###.#..###..","..........#.#.....##..#####...#","#......#.#..##.#.#...#.##.#....","#......#.#..##.##.#...#....#...","....#..#......#....#....#######",".#...#......#....###......#.###","#.#....#.#...#.###......#..#..#",".###......#.#...#.####.#..####.","######.#.....###.#...#.#.....#.",".#.###....#..#.#.....#.....####",".......###.#.........#..#......","#...#.....##.#......####.......","..#.#..##.#.#...#...#..##..##..",".....#...##.....#...##......##.","##..#..#.##..#.#......#.....#..","##.........#.#.##.#..#.#....#.#",".#........###...#.........#....","...#..#.#..#....####...........","#.#....#..##..####.#...#.##....",".#.....#.......#..........#..##","...#.......#...###..#.....#..##",".........#.###.#..##...#.##...#",".#..........##..####...#..#.#.#",".#...##...#............##...#.#","...#....#.#..........#.#..#.#..",".#.#...##....##.#.#.#....#.....","....#..#.....#.#..#.#..#.##.###",".....#.#.....#..#......#.#.#...",".....#.#.#..###..#.#..###...#..","#.......####...#.#..#......##.#","....#..#..###......###.##....#.","##.....#.....#.............#..#","#..#..#...##.....##..#..#.#....",".....#.#.###...#...............","#.#.#.....#.#..#.#...#.......#.","..##.##............#....#..##..","#....##...#.....#.###...#.#....","#...##.#.........#...#....#....","##.##.#...#.#...###..#....##..#","....#....##..#..#.......#...##.",".#...#...#..#.....#..###.#..#.#","....#..###......#....##....#...","#.#.....#....##.#..#.#...###...",".......#............#......#...",".##..#.###.#.............###...","..##...##.#.#.#.....#........##","....#.###....#..#..#...#...#..#",".....#...#...#..#....#.....##..","###.#.#.....#......####.....#..","#.#.###............#......#....","..#.....#..#..#..#....#......#.","#...######...#....#.##...##.#.#","##.#.#.#..##......##.#..#.#...#","............#.#..#.##....#.....","......#............#.#...#..#.#",".#..##...##..#.#.#..###.....##.","#.###.#...........#...#....#...","....##.....#...##...#...###.#.#",".####.#.#.....#.#..#.#.##......",".#...##......###...#..##..#.#..",".#......#...#....##.....##..#..","..........##.....###.##.#...#.#",".#........##.#..............#..","#...###..#...#.....#....#.....#","...#......#..#...#...#..###.#..",".#...##..#........#.......#.#..",".#.#.##.........##.##......#..#","#...#.#.#...#.....#.#...#.#..#.","#.#..#...#...#...##..........#.",".#...........#....#..#.#..#.#..","#.......#......#..#...#........",".....#..#...##..###..##........","......#...#.....#..#.#.#....##.","....##..##..##....###.##.......",".#........##.#.#...#..#........",".....##...##...#......#..#...#.","..#.....#....###.#..##....#..#.","......#..#...####.#.....##.####"]

getXCoords :: String -> [Int]
getXCoords line = getXCoords' line 0

getXCoords' :: String -> Int -> [Int]
getXCoords' (x:xs) i | x == '#' = i : getXCoords' xs (i+1)
                     | otherwise =  getXCoords' xs (i+1)
getXCoords' [] _ = []

addYCoords :: Int -> [Int] -> [(Int, Int)]
addYCoords y xs = map (\x -> (x,y)) xs

xCoords ::[String] ->  [[Int]]
xCoords = map getXCoords

getMap :: [String] -> [(Int, Int)]
getMap input = (concat $ zipWith addYCoords [0..(length (xCoords input))] (xCoords input))

getPath :: Int -> Int -> [(Int,Int)]
getPath l h = map (\y -> (y*1`mod`l,y*1))  [0..h]

part1 i = length $ filter (`elem` m) path
    where path = getPath (length (head i)) (length i) 
          m = getMap i  
