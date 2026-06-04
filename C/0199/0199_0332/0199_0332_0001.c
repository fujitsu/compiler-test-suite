#include <stdlib.h>
extern unsigned short v3 (signed char, signed short);
extern unsigned short (*v4) (signed char, signed short);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern signed short v9 (unsigned char);
extern signed short (*v10) (unsigned char);
unsigned char v11 (signed char, signed char, unsigned short, unsigned char);
unsigned char (*v12) (signed char, signed char, unsigned short, unsigned char) = v11;
extern signed char v13 (signed short, unsigned short, unsigned int);
extern signed char (*v14) (signed short, unsigned short, unsigned int);
extern signed char v15 (signed short, signed char, signed short, unsigned int);
extern signed char (*v16) (signed short, signed char, signed short, unsigned int);
extern void v17 (signed char, unsigned int, signed short);
extern void (*v18) (signed char, unsigned int, signed short);
extern void v19 (signed int, signed int, signed char, unsigned int);
extern void (*v20) (signed int, signed int, signed char, unsigned int);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern unsigned int v23 (signed char);
extern unsigned int (*v24) (signed char);
extern unsigned short v25 (signed char, signed int, unsigned char);
extern unsigned short (*v26) (signed char, signed int, unsigned char);
signed char v27 (void);
signed char (*v28) (void) = v27;
extern void v29 (unsigned int, unsigned short);
extern void (*v30) (unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v99 = 2;
signed int v98 = -1;
signed short v97 = -4;

signed char v27 (void)
{
{
for (;;) {
unsigned short v102 = 5;
unsigned char v101 = 7;
unsigned char v100 = 6;
trace++;
switch (trace)
{
case 7: 
{
signed char v103;
unsigned int v104;
v103 = 0 + -1;
v104 = v23 (v103);
history[history_index++] = (int)v104;
}
break;
case 9: 
return 2;
default: abort ();
}
}
}
}

unsigned char v11 (signed char v105, signed char v106, unsigned short v107, unsigned char v108)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed char v111 = 1;
signed char v110 = -4;
unsigned short v109 = 6;
trace++;
switch (trace)
{
case 4: 
return v108;
default: abort ();
}
}
}
}
