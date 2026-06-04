#include <stdlib.h>
extern signed short v3 (signed int, unsigned short, signed char, unsigned int);
extern signed short (*v4) (signed int, unsigned short, signed char, unsigned int);
extern unsigned char v5 (signed short, unsigned int, signed short, unsigned char);
extern unsigned char (*v6) (signed short, unsigned int, signed short, unsigned char);
extern unsigned char v7 (signed short);
extern unsigned char (*v8) (signed short);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern unsigned char v11 (signed char, signed int);
extern unsigned char (*v12) (signed char, signed int);
extern unsigned short v13 (signed short, unsigned int, signed int, signed int);
extern unsigned short (*v14) (signed short, unsigned int, signed int, signed int);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern signed int v17 (unsigned char, unsigned char);
extern signed int (*v18) (unsigned char, unsigned char);
signed char v19 (unsigned int);
signed char (*v20) (unsigned int) = v19;
extern signed short v21 (signed char);
extern signed short (*v22) (signed char);
extern unsigned int v23 (unsigned short);
extern unsigned int (*v24) (unsigned short);
unsigned short v25 (void);
unsigned short (*v26) (void) = v25;
extern signed short v27 (unsigned char, unsigned int, unsigned int, signed short);
extern signed short (*v28) (unsigned char, unsigned int, unsigned int, signed short);
signed int v29 (void);
signed int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v92 = -4;
signed char v91 = 0;
signed short v90 = -3;

signed int v29 (void)
{
{
for (;;) {
unsigned char v95 = 1;
signed short v94 = -3;
signed char v93 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v25 (void)
{
{
for (;;) {
signed int v98 = 3;
unsigned int v97 = 6U;
signed char v96 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (unsigned int v99)
{
history[history_index++] = (int)v99;
{
for (;;) {
unsigned short v102 = 6;
signed char v101 = 0;
unsigned int v100 = 2U;
trace++;
switch (trace)
{
case 3: 
return v101;
case 9: 
return v101;
default: abort ();
}
}
}
}
