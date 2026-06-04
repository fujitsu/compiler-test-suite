#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern unsigned int v3 (unsigned int);
extern unsigned int (*v4) (unsigned int);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
signed short v9 (signed short);
signed short (*v10) (signed short) = v9;
extern unsigned int v11 (signed char, unsigned int, signed int, signed char);
extern unsigned int (*v12) (signed char, unsigned int, signed int, signed char);
extern unsigned int v13 (unsigned int, signed int, unsigned char);
extern unsigned int (*v14) (unsigned int, signed int, unsigned char);
unsigned int v15 (void);
unsigned int (*v16) (void) = v15;
extern unsigned char v17 (signed char, unsigned char, unsigned int);
extern unsigned char (*v18) (signed char, unsigned char, unsigned int);
extern void v19 (void);
extern void (*v20) (void);
unsigned int v21 (void);
unsigned int (*v22) (void) = v21;
extern unsigned char v23 (unsigned char, unsigned short, signed int, unsigned char);
extern unsigned char (*v24) (unsigned char, unsigned short, signed int, unsigned char);
extern signed char v27 (signed char, unsigned short);
extern signed char (*v28) (signed char, unsigned short);
extern signed short v29 (signed char, signed short, signed char, signed short);
extern signed short (*v30) (signed char, signed short, signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v49 = 3;
signed char v48 = 3;
unsigned short v47 = 2;

unsigned int v21 (void)
{
{
for (;;) {
signed char v52 = -2;
unsigned char v51 = 1;
unsigned int v50 = 4U;
trace++;
switch (trace)
{
case 3: 
return v50;
case 5: 
return v50;
default: abort ();
}
}
}
}

unsigned int v15 (void)
{
{
for (;;) {
signed int v55 = -1;
unsigned char v54 = 1;
unsigned char v53 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (signed short v56)
{
history[history_index++] = (int)v56;
{
for (;;) {
unsigned short v59 = 7;
unsigned short v58 = 1;
signed int v57 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
