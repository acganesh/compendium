genString n = "Line count: " ++ show n ++ "\n"
count s = length s
main = interact (genString . count . lines)
