#include <stdlib.h>
extern signed int v1 (signed short, unsigned short);
extern signed int (*v2) (signed short, unsigned short);
extern unsigned int v3 (signed char, unsigned char);
extern unsigned int (*v4) (signed char, unsigned char);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern signed char v7 (signed short, signed int, signed char);
extern signed char (*v8) (signed short, signed int, signed char);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern unsigned short v11 (signed char, signed int);
extern unsigned short (*v12) (signed char, signed int);
signed short v13 (unsigned int);
signed short (*v14) (unsigned int) = v13;
extern unsigned char v15 (signed int, signed char, unsigned int, signed short);
extern unsigned char (*v16) (signed int, signed char, unsigned int, signed short);
extern unsigned short v17 (signed int, signed char);
extern unsigned short (*v18) (signed int, signed char);
extern unsigned char v19 (signed char, unsigned char, signed char, signed char);
extern unsigned char (*v20) (signed char, unsigned char, signed char, signed char);
extern unsigned int v21 (signed char, signed int, unsigned int);
extern unsigned int (*v22) (signed char, signed int, unsigned int);
unsigned short v23 (unsigned int, unsigned int);
unsigned short (*v24) (unsigned int, unsigned int) = v23;
extern unsigned char v25 (unsigned char, unsigned short, unsigned short, unsigned char);
extern unsigned char (*v26) (unsigned char, unsigned short, unsigned short, unsigned char);
extern signed char v27 (signed short, signed char, signed char, signed short);
extern signed char (*v28) (signed short, signed char, signed char, signed short);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v97 = 3;
unsigned int v96 = 3U;
signed int v95 = 1;

unsigned short v23 (unsigned int v98, unsigned int v99)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
signed char v102 = -4;
signed short v101 = 2;
unsigned int v100 = 6U;
trace++;
switch (trace)
{
case 7: 
return 3;
case 9: 
return 1;
default: abort ();
}
}
}
}

signed short v13 (unsigned int v103)
{
history[history_index++] = (int)v103;
{
for (;;) {
unsigned char v106 = 2;
unsigned char v105 = 5;
unsigned short v104 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
