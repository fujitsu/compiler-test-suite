#include <stdlib.h>
extern signed char v1 (unsigned char, unsigned short, signed int, signed int);
extern signed char (*v2) (unsigned char, unsigned short, signed int, signed int);
extern signed int v3 (signed int, unsigned int, signed int, unsigned int);
extern signed int (*v4) (signed int, unsigned int, signed int, unsigned int);
extern void v5 (unsigned short, signed int, unsigned char);
extern void (*v6) (unsigned short, signed int, unsigned char);
extern void v7 (signed int, signed short, unsigned short, unsigned int);
extern void (*v8) (signed int, signed short, unsigned short, unsigned int);
extern signed int v9 (signed int, unsigned char, unsigned char, unsigned char);
extern signed int (*v10) (signed int, unsigned char, unsigned char, unsigned char);
extern unsigned int v11 (unsigned int, signed int);
extern unsigned int (*v12) (unsigned int, signed int);
signed char v13 (void);
signed char (*v14) (void) = v13;
extern void v15 (signed short, unsigned short);
extern void (*v16) (signed short, unsigned short);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern unsigned int v19 (unsigned short, unsigned int);
extern unsigned int (*v20) (unsigned short, unsigned int);
extern unsigned int v21 (unsigned char, signed int, signed char, unsigned int);
extern unsigned int (*v22) (unsigned char, signed int, signed char, unsigned int);
unsigned int v23 (unsigned short, signed short, signed char, unsigned char);
unsigned int (*v24) (unsigned short, signed short, signed char, unsigned char) = v23;
extern signed char v25 (void);
extern signed char (*v26) (void);
extern signed short v27 (unsigned short, signed int, unsigned short, unsigned char);
extern signed short (*v28) (unsigned short, signed int, unsigned short, unsigned char);
extern unsigned int v29 (unsigned char, unsigned short, unsigned short, unsigned char);
extern unsigned int (*v30) (unsigned char, unsigned short, unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v159 = 0;
unsigned int v158 = 4U;
signed char v157 = 2;

unsigned int v23 (unsigned short v160, signed short v161, signed char v162, unsigned char v163)
{
history[history_index++] = (int)v160;
history[history_index++] = (int)v161;
history[history_index++] = (int)v162;
history[history_index++] = (int)v163;
{
for (;;) {
signed char v166 = 1;
unsigned short v165 = 3;
signed char v164 = 1;
trace++;
switch (trace)
{
case 11: 
return 0U;
default: abort ();
}
}
}
}

signed char v13 (void)
{
{
for (;;) {
signed int v169 = 3;
signed char v168 = 1;
unsigned char v167 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
