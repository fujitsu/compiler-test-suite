#include <stdlib.h>
signed int v3 (signed char, signed short);
signed int (*v4) (signed char, signed short) = v3;
void v5 (void);
void (*v6) (void) = v5;
extern void v7 (void);
extern void (*v8) (void);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern signed char v11 (void);
extern signed char (*v12) (void);
extern void v13 (void);
extern void (*v14) (void);
extern signed int v15 (signed char, signed int, signed short, unsigned int);
extern signed int (*v16) (signed char, signed int, signed short, unsigned int);
extern signed int v17 (signed char, unsigned char, signed int, unsigned int);
extern signed int (*v18) (signed char, unsigned char, signed int, unsigned int);
extern unsigned int v21 (unsigned short, unsigned short);
extern unsigned int (*v22) (unsigned short, unsigned short);
signed int v23 (signed char, unsigned char, signed char);
signed int (*v24) (signed char, unsigned char, signed char) = v23;
extern unsigned char v25 (signed short, signed int, unsigned char, signed int);
extern unsigned char (*v26) (signed short, signed int, unsigned char, signed int);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v94 = 0;
signed int v93 = -1;
signed int v92 = -4;

signed int v23 (signed char v95, unsigned char v96, signed char v97)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed char v100 = -1;
signed char v99 = 2;
signed int v98 = -2;
trace++;
switch (trace)
{
case 3: 
return v98;
default: abort ();
}
}
}
}

void v5 (void)
{
{
for (;;) {
signed short v103 = 2;
signed int v102 = 2;
signed int v101 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed char v104, signed short v105)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned int v108 = 7U;
unsigned short v107 = 4;
unsigned short v106 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
