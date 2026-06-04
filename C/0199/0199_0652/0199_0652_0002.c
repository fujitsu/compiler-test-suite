#include <stdlib.h>
extern signed short v3 (signed int, signed int, signed int, unsigned char);
extern signed short (*v4) (signed int, signed int, signed int, unsigned char);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern signed char v7 (signed int, signed short, signed char);
extern signed char (*v8) (signed int, signed short, signed char);
extern signed int v9 (unsigned char);
extern signed int (*v10) (unsigned char);
unsigned int v11 (signed short, signed short);
unsigned int (*v12) (signed short, signed short) = v11;
extern signed char v13 (signed short);
extern signed char (*v14) (signed short);
extern void v15 (unsigned short);
extern void (*v16) (unsigned short);
unsigned short v17 (void);
unsigned short (*v18) (void) = v17;
extern signed short v19 (signed short, signed char, unsigned int, unsigned int);
extern signed short (*v20) (signed short, signed char, unsigned int, unsigned int);
extern unsigned short v21 (signed int, signed char, signed short);
extern unsigned short (*v22) (signed int, signed char, signed short);
extern unsigned char v23 (unsigned short, signed int);
extern unsigned char (*v24) (unsigned short, signed int);
extern void v25 (signed short, signed char, unsigned int);
extern void (*v26) (signed short, signed char, unsigned int);
extern void v27 (unsigned char, unsigned short);
extern void (*v28) (unsigned char, unsigned short);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v92 = -3;
signed char v91 = 0;
signed char v90 = 0;

unsigned short v17 (void)
{
{
for (;;) {
unsigned int v95 = 5U;
unsigned char v94 = 4;
unsigned char v93 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (signed short v96, signed short v97)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed short v100 = 1;
signed short v99 = -2;
signed short v98 = -3;
trace++;
switch (trace)
{
case 5: 
{
signed short v101;
signed char v102;
unsigned int v103;
unsigned int v104;
signed short v105;
v101 = v99 + v98;
v102 = -1 - 3;
v103 = 2U - 2U;
v104 = 2U + 7U;
v105 = v19 (v101, v102, v103, v104);
history[history_index++] = (int)v105;
}
break;
case 13: 
return 6U;
default: abort ();
}
}
}
}
