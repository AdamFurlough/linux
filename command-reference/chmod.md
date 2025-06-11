# chmod

user, group, others

___________________________________________________
#	  Sum	              rwx	  Permission
___________________________________________________
7	4(r) + 2(w) + 1(x)	rwx	  read, write and execute
6	4(r) + 2(w)	        rw-	  read and write
5	4(r)        + 1(x)	r-x	  read and execute
4	4(r)	              r--	  read only
3	       2(w) + 1(x)	-wx	  write and execute
2	       2(w)	        -w-	  write only
1	              1(x)	--x	  execute only
0	  0	                ---	  none
___________________________________________________



chmod o+w data.txt    # adds write to others
chmod g+x

u user who owns
g group who owns
o others nots in group
a all (user, group, and others)


chown
chown user:group
