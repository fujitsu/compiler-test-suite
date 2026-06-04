#include <stdlib.h>
signed int v3 (unsigned int, unsigned char);
signed int (*v4) (unsigned int, unsigned char) = v3;
extern unsigned int v5 (signed char, unsigned char, signed short);
extern unsigned int (*v6) (signed char, unsigned char, signed short);
signed int v7 (signed char, signed short);
signed int (*v8) (signed char, signed short) = v7;
extern signed short v9 (void);
extern signed short (*v10) (void);
extern unsigned char v11 (signed short, unsigned char);
extern unsigned char (*v12) (signed short, unsigned char);
extern signed int v13 (signed int, unsigned short, unsigned char, signed char);
extern signed int (*v14) (signed int, unsigned short, unsigned char, signed char);
extern signed int v15 (signed char, signed short);
extern signed int (*v16) (signed char, signed short);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern signed char v19 (signed short);
extern signed char (*v20) (signed short);
unsigned short v21 (unsigned short);
unsigned short (*v22) (unsigned short) = v21;
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern signed char v29 (unsigned short, signed char);
extern signed char (*v30) (unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v98 = -3;
signed int v97 = -2;
signed short v96 = -3;

unsigned short v21 (unsigned short v99)
{
history[history_index++] = (int)v99;
{
for (;;) {
unsigned int v102 = 7U;
unsigned short v101 = 6;
unsigned char v100 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (signed char v103, signed short v104)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
signed short v107 = 2;
signed char v106 = -1;
signed int v105 = 1;
trace++;
switch (trace)
{
case 3: 
return -1;
default: abort ();
}
}
}
}

signed int v3 (unsigned int v108, unsigned char v109)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned short v112 = 7;
signed char v111 = 3;
unsigned char v110 = 5;
trace++;
switch (trace)
{
case 5: 
{
signed char v113;
v113 = v17 ();
history[history_index++] = (int)v113;
}
break;
case 7: 
{
signed char v114;
v114 = v17 ();
history[history_index++] = (int)v114;
}
break;
case 9: 
{
signed char v115;
v115 = v17 ();
history[history_index++] = (int)v115;
}
break;
case 11: 
return 3;
default: abort ();
}
}
}
}
