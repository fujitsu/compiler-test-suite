#include <stdlib.h>
extern void v1 (unsigned int);
extern void (*v2) (unsigned int);
extern signed int v3 (signed short, signed short, unsigned short);
extern signed int (*v4) (signed short, signed short, unsigned short);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern unsigned char v9 (unsigned char, signed char, signed int);
extern unsigned char (*v10) (unsigned char, signed char, signed int);
extern unsigned int v11 (signed short);
extern unsigned int (*v12) (signed short);
extern unsigned int v13 (unsigned short, unsigned int);
extern unsigned int (*v14) (unsigned short, unsigned int);
extern signed int v15 (unsigned short);
extern signed int (*v16) (unsigned short);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern void v21 (unsigned int);
extern void (*v22) (unsigned int);
signed int v23 (signed char, unsigned int, unsigned char, signed int);
signed int (*v24) (signed char, unsigned int, unsigned char, signed int) = v23;
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
signed int v27 (signed short, signed int, unsigned int);
signed int (*v28) (signed short, signed int, unsigned int) = v27;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v96 = 0;
unsigned char v95 = 2;
signed int v94 = 3;

signed int v27 (signed short v97, signed int v98, unsigned int v99)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned char v102 = 5;
signed short v101 = 0;
unsigned short v100 = 2;
trace++;
switch (trace)
{
case 1: 
return 1;
default: abort ();
}
}
}
}

signed int v23 (signed char v103, unsigned int v104, unsigned char v105, signed int v106)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed short v109 = -3;
signed int v108 = -2;
unsigned char v107 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
