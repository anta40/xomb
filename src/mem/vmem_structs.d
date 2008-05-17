// Page table structures
align(1) struct pml4
{
	ulong pml4e;
	mixin(Bitfield!(pml4e, "p", 1, "rw", 1, "us", 1, "pwt", 1, "pcd", 1, "a", 1,
	"ign", 1, "mbz", 2, "avl", 3, "pdpba", 41, "available", 10, "nx", 1));
}

// Page directory pointer entry
align(1) struct pml3 
{
	ulong pml3e;
	mixin(Bitfield!(pml3e, "p", 1, "rw", 1, "us", 1, "pwt", 1, "pcd", 1, "a", 1,
	"ign", 1, "o", 1, "mbz", 1, "avl", 3, "pdba", 41, "available", 10, "nx", 1));
}


align(1) struct pml2
{
	ulong pml2e;
	mixin(Bitfield!(pml2e, "p", 1, "rw", 1, "us", 1, "pwt", 1, "pcd", 1, "a", 1,
	"ign1", 1, "o", 1, "ign2", 1, "avl", 3, "pdba", 41, "available", 10, "nx", 1));
}


align(1) struct pml1
{
	ulong pml1e;
	mixin(Bitfield!(pml1e, "p", 1, "rw", 1, "us", 1, "pwt", 1, "pcd", 1, "a", 1,
	"d", 1, "pat", 1, "g", 1, "avl", 3, "pdba", 41, "available", 10, "nx", 1));
}

struct mem_region 
{
	ulong virtual_start;
	ulong physical_start;
	uint length;
}
