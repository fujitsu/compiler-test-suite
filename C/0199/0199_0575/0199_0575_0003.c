#include <stdlib.h>
unsigned char v1 (void);
unsigned char (*v2) (void) = v1;
extern void v3 (signed short, unsigned short, unsigned short);
extern void (*v4) (signed short, unsigned short, unsigned short);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern signed short v7 (signed int, unsigned char);
extern signed short (*v8) (signed int, unsigned char);
extern unsigned int v9 (signed char, unsigned int);
extern unsigned int (*v10) (signed char, unsigned int);
extern unsigned char v11 (signed int);
extern unsigned char (*v12) (signed int);
extern signed char v13 (unsigned char, unsigned char);
extern signed char (*v14) (unsigned char, unsigned char);
extern signed int v15 (signed short, unsigned char, signed short);
extern signed int (*v16) (signed short, unsigned char, signed short);
extern void v17 (void);
extern void (*v18) (void);
extern unsigned int v19 (signed char, signed char);
extern unsigned int (*v20) (signed char, signed char);
extern signed int v21 (unsigned int, unsigned short, signed short);
extern signed int (*v22) (unsigned int, unsigned short, signed short);
extern unsigned int v23 (signed char, unsigned int, unsigned int);
extern unsigned int (*v24) (signed char, unsigned int, unsigned int);
unsigned int v25 (void);
unsigned int (*v26) (void) = v25;
extern unsigned short v27 (signed int, unsigned int);
extern unsigned short (*v28) (signed int, unsigned int);
extern void v29 (unsigned int, signed char, signed int);
extern void (*v30) (unsigned int, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v94 = 3;
signed char v93 = -3;
signed int v92 = 2;

unsigned int v25 (void)
{
{
for (;;) {
unsigned short v97 = 0;
signed short v96 = 3;
unsigned short v95 = 0;
trace++;
switch (trace)
{
case 2: 
return 7U;
case 4: 
return 3U;
case 7: 
return 4U;
default: abort ();
}
}
}
}

unsigned char v1 (void)
{
{
for (;;) {
signed int v100 = -1;
signed char v99 = 2;
unsigned int v98 = 6U;
trace++;
switch (trace)
{
case 0: 
{
signed short v101;
unsigned char v102;
signed short v103;
signed int v104;
v101 = -3 + -2;
v102 = 4 + 5;
v103 = 1 + -2;
v104 = v15 (v101, v102, v103);
history[history_index++] = (int)v104;
}
break;
case 6: 
{
unsigned int v105;
v105 = v25 ();
history[history_index++] = (int)v105;
}
break;
case 8: 
{
unsigned int v106;
signed char v107;
signed int v108;
v106 = 7U + v98;
v107 = -1 - 1;
v108 = 2 + v100;
v29 (v106, v107, v108);
}
break;
case 10: 
{
signed char v109;
unsigned int v110;
unsigned int v111;
unsigned int v112;
v109 = 1 - 0;
v110 = v98 - v98;
v111 = 0U + v98;
v112 = v23 (v109, v110, v111);
history[history_index++] = (int)v112;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}
