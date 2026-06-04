#include <stdlib.h>
extern unsigned short v1 (signed int, unsigned int, signed short, signed char);
extern unsigned short (*v2) (signed int, unsigned int, signed short, signed char);
signed char v3 (unsigned int, unsigned short);
signed char (*v4) (unsigned int, unsigned short) = v3;
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern signed short v7 (signed short, unsigned char, signed short, signed short);
extern signed short (*v8) (signed short, unsigned char, signed short, signed short);
extern signed int v9 (signed char, signed char, unsigned int);
extern signed int (*v10) (signed char, signed char, unsigned int);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern void v13 (signed short);
extern void (*v14) (signed short);
signed char v15 (signed short, signed char);
signed char (*v16) (signed short, signed char) = v15;
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern void v19 (unsigned int, signed int, unsigned char);
extern void (*v20) (unsigned int, signed int, unsigned char);
extern unsigned short v21 (unsigned char);
extern unsigned short (*v22) (unsigned char);
extern signed char v23 (signed char, unsigned char, signed char);
extern signed char (*v24) (signed char, unsigned char, signed char);
extern signed int v25 (unsigned char);
extern signed int (*v26) (unsigned char);
extern unsigned char v27 (unsigned int);
extern unsigned char (*v28) (unsigned int);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v125 = 0;
signed short v124 = 0;
unsigned short v123 = 7;

signed char v15 (signed short v126, signed char v127)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
unsigned char v130 = 6;
signed short v129 = 2;
unsigned short v128 = 1;
trace++;
switch (trace)
{
case 3: 
return v127;
case 8: 
return v127;
case 10: 
return v127;
default: abort ();
}
}
}
}

signed char v3 (unsigned int v131, unsigned short v132)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed char v135 = -3;
unsigned short v134 = 4;
unsigned int v133 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
