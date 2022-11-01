fnames = ["佐藤", "鈴木", "高橋", "田中"]
gnames = ["太郎", "次郎", "花子"]
cellphone = [true , false]

0.upto(9) do |idx|
  friend = Friend.find_by(name: "#{fnames[idx % 4]} #{gnames[idx % 3]}")
  Telephone.create(
    name: friend,
    number: "#{idx % 4}#{idx % 4}#{idx % 4}-#{idx % 3}#{idx % 3}#{idx % 3}#{idx % 3}-#{idx % 2}#{idx % 2}#{idx % 2}#{idx % 2}",
    cellphone: cellphone[idx % 2]
  )
end