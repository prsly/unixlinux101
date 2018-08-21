#!/usr/bin/perl

@items = ("носки", "туфли", "шорты");
printf "Есть %d вида одежды.\n", $#items + 1;
print "Наденьте ${items[2]} первыми, затем ", join(" и ",@items[0,1]),".\n";