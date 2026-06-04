#include <stdlib.h>
extern unsigned int v1 (unsigned short, signed short, unsigned short);
extern unsigned int (*v2) (unsigned short, signed short, unsigned short);
extern unsigned char v3 (unsigned int, unsigned int);
extern unsigned char (*v4) (unsigned int, unsigned int);
extern signed int v5 (unsigned short);
extern signed int (*v6) (unsigned short);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern unsigned short v9 (unsigned char);
extern unsigned short (*v10) (unsigned char);
extern void v11 (signed short, unsigned int, signed int);
extern void (*v12) (signed short, unsigned int, signed int);
extern unsigned short v13 (unsigned short, signed char);
extern unsigned short (*v14) (unsigned short, signed char);
extern signed short v15 (unsigned char);
extern signed short (*v16) (unsigned char);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern signed char v19 (unsigned short, signed int, signed char);
extern signed char (*v20) (unsigned short, signed int, signed char);
signed short v21 (signed short, unsigned short, unsigned int, signed short);
signed short (*v22) (signed short, unsigned short, unsigned int, signed short) = v21;
extern unsigned int v23 (signed char, unsigned char, signed short, unsigned char);
extern unsigned int (*v24) (signed char, unsigned char, signed short, unsigned char);
signed int v25 (void);
signed int (*v26) (void) = v25;
signed int v27 (void);
signed int (*v28) (void) = v27;
extern void v29 (signed char, signed int, unsigned int);
extern void (*v30) (signed char, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v54 = 0U;
unsigned short v53 = 7;
signed int v52 = -2;

signed int v27 (void)
{
{
for (;;) {
signed char v57 = 3;
unsigned short v56 = 2;
signed short v55 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v25 (void)
{
{
for (;;) {
signed short v60 = 3;
unsigned short v59 = 5;
signed short v58 = 3;
trace++;
switch (trace)
{
case 11: 
return 2;
default: abort ();
}
}
}
}

signed short v21 (signed short v61, unsigned short v62, unsigned int v63, signed short v64)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned short v67 = 1;
unsigned char v66 = 7;
unsigned short v65 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
