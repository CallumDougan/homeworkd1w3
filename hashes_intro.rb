my_toys = {"under_the_bed" => "lightsaber", "cupboard" => "teddy", "drawer" => "slinky"} #OR Hash.new
#will put 'lightsaber'
puts my_toys['under_the_bed']
#returns 'nil' as no value assigned
puts my_toys['jacket_pocket']
my_toys['jacket_pocket'] = 'top trumps'
#now returns 'top trumps'
puts my_toys['jacket_pocket']
#replaces 'top trumps'
my_toys['jacket_pocket'] = 'keys'
puts my_toys['jacket_pocket']
#returns full hash
puts my_toys
#removes jacket_pocket key entirely, returns new full hash, remember this is soft brackets now, like all methods
my_toys.delete('jacket_pocket')
puts my_toys
#returns drawer contents, goes mad if no value assigned to key
puts my_toys.fetch('drawer')
#creates symbol-based hash, replacing my_toys, both hashes identical
my_toys = {:under_the_bed => "lightsaber", :cupboard => "teddy"}
my_toys = {under_the_bed: "lightsaber", cupboard: "teddy"}
puts my_toys #note console retains hash rockets