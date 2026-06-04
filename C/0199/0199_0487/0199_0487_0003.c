#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern signed char v5 (signed int, unsigned int, unsigned short);
extern signed char (*v6) (signed int, unsigned int, unsigned short);
extern signed short v7 (signed int, signed char);
extern signed short (*v8) (signed int, signed char);
extern void v9 (unsigned int);
extern void (*v10) (unsigned int);
signed short v11 (signed char, signed short, unsigned int, unsigned short);
signed short (*v12) (signed char, signed short, unsigned int, unsigned short) = v11;
extern void v13 (unsigned int, unsigned short, signed int);
extern void (*v14) (unsigned int, unsigned short, signed int);
extern signed char v15 (unsigned int);
extern signed char (*v16) (unsigned int);
extern unsigned char v17 (unsigned char, unsigned short, signed char, unsigned short);
extern unsigned char (*v18) (unsigned char, unsigned short, signed char, unsigned short);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern signed char v21 (unsigned char, unsigned short);
extern signed char (*v22) (unsigned char, unsigned short);
unsigned char v23 (signed short, signed int, unsigned short, unsigned char);
unsigned char (*v24) (signed short, signed int, unsigned short, unsigned char) = v23;
extern signed int v25 (signed char, unsigned short);
extern signed int (*v26) (signed char, unsigned short);
extern unsigned int v27 (signed int);
extern unsigned int (*v28) (signed int);
extern signed short v29 (unsigned short, signed short, unsigned short);
extern signed short (*v30) (unsigned short, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v94 = 3;
unsigned short v93 = 3;
unsigned short v92 = 2;

unsigned char v23 (signed short v95, signed int v96, unsigned short v97, unsigned char v98)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
unsigned short v101 = 7;
signed short v100 = 0;
unsigned short v99 = 3;
trace++;
switch (trace)
{
case 3: 
return 4;
case 5: 
return 7;
default: abort ();
}
}
}
}

signed short v11 (signed char v102, signed short v103, unsigned int v104, unsigned short v105)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed char v108 = -2;
unsigned int v107 = 4U;
unsigned short v106 = 7;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v109;
signed char v110;
v109 = 6U + v107;
v110 = v15 (v109);
history[history_index++] = (int)v110;
}
break;
case 7: 
{
signed int v111;
unsigned int v112;
v111 = 0 + -3;
v112 = v27 (v111);
history[history_index++] = (int)v112;
}
break;
case 9: 
{
unsigned int v113;
signed char v114;
v113 = v104 + v107;
v114 = v15 (v113);
history[history_index++] = (int)v114;
}
break;
case 13: 
return v103;
default: abort ();
}
}
}
}
