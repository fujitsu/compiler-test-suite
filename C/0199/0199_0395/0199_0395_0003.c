#include <stdlib.h>
extern signed char v3 (unsigned short);
extern signed char (*v4) (unsigned short);
extern signed char v5 (unsigned int);
extern signed char (*v6) (unsigned int);
extern unsigned int v7 (signed char, unsigned int, unsigned char);
extern unsigned int (*v8) (signed char, unsigned int, unsigned char);
extern void v9 (signed char, unsigned char);
extern void (*v10) (signed char, unsigned char);
unsigned short v11 (unsigned char, unsigned char, unsigned short, signed char);
unsigned short (*v12) (unsigned char, unsigned char, unsigned short, signed char) = v11;
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern unsigned char v15 (signed short, unsigned char);
extern unsigned char (*v16) (signed short, unsigned char);
extern unsigned char v17 (signed short, signed short);
extern unsigned char (*v18) (signed short, signed short);
extern void v19 (void);
extern void (*v20) (void);
extern unsigned short v21 (unsigned char, unsigned short, unsigned int);
extern unsigned short (*v22) (unsigned char, unsigned short, unsigned int);
unsigned short v23 (void);
unsigned short (*v24) (void) = v23;
extern signed int v25 (signed short, signed char, unsigned char);
extern signed int (*v26) (signed short, signed char, unsigned char);
extern signed char v27 (unsigned int, unsigned char);
extern signed char (*v28) (unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v94 = 1;
unsigned int v93 = 1U;
signed short v92 = 3;

unsigned short v23 (void)
{
{
for (;;) {
unsigned short v97 = 0;
unsigned char v96 = 6;
signed short v95 = 3;
trace++;
switch (trace)
{
case 10: 
{
unsigned int v98;
unsigned char v99;
signed char v100;
v98 = 3U - 1U;
v99 = v96 - 4;
v100 = v27 (v98, v99);
history[history_index++] = (int)v100;
}
break;
case 12: 
return v97;
default: abort ();
}
}
}
}

unsigned short v11 (unsigned char v101, unsigned char v102, unsigned short v103, signed char v104)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
unsigned char v107 = 6;
unsigned char v106 = 5;
unsigned char v105 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
