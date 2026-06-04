#include <stdlib.h>
extern signed short v1 (signed short);
extern signed short (*v2) (signed short);
extern void v3 (signed short, signed char, unsigned int);
extern void (*v4) (signed short, signed char, unsigned int);
extern void v5 (unsigned int, unsigned char, signed int, unsigned short);
extern void (*v6) (unsigned int, unsigned char, signed int, unsigned short);
extern unsigned int v7 (unsigned char, signed char, unsigned int);
extern unsigned int (*v8) (unsigned char, signed char, unsigned int);
extern void v9 (unsigned char, unsigned char, unsigned int, unsigned short);
extern void (*v10) (unsigned char, unsigned char, unsigned int, unsigned short);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern void v13 (signed int, signed short, signed char);
extern void (*v14) (signed int, signed short, signed char);
extern signed char v17 (signed int);
extern signed char (*v18) (signed int);
extern void v19 (unsigned int, signed int, signed short);
extern void (*v20) (unsigned int, signed int, signed short);
unsigned short v21 (signed int, unsigned char);
unsigned short (*v22) (signed int, unsigned char) = v21;
extern unsigned short v23 (unsigned int, signed int);
extern unsigned short (*v24) (unsigned int, signed int);
unsigned short v25 (unsigned short);
unsigned short (*v26) (unsigned short) = v25;
extern signed int v29 (signed char, unsigned int, unsigned short);
extern signed int (*v30) (signed char, unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v95 = 6U;
signed char v94 = -1;
unsigned short v93 = 3;

unsigned short v25 (unsigned short v96)
{
history[history_index++] = (int)v96;
{
for (;;) {
unsigned char v99 = 7;
unsigned short v98 = 6;
signed char v97 = 3;
trace++;
switch (trace)
{
case 8: 
return v96;
case 10: 
return v96;
default: abort ();
}
}
}
}

unsigned short v21 (signed int v100, unsigned char v101)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
unsigned int v104 = 7U;
unsigned char v103 = 1;
signed short v102 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
