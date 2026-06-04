#include <stdlib.h>
extern unsigned char v1 (signed int);
extern unsigned char (*v2) (signed int);
extern signed int v3 (unsigned short, unsigned char, signed short);
extern signed int (*v4) (unsigned short, unsigned char, signed short);
extern signed short v5 (unsigned int, unsigned char, signed char);
extern signed short (*v6) (unsigned int, unsigned char, signed char);
extern signed short v7 (unsigned char, signed char, signed char);
extern signed short (*v8) (unsigned char, signed char, signed char);
extern void v9 (unsigned int, signed int, signed char, unsigned int);
extern void (*v10) (unsigned int, signed int, signed char, unsigned int);
extern unsigned int v11 (unsigned int, signed short, unsigned char);
extern unsigned int (*v12) (unsigned int, signed short, unsigned char);
extern signed char v13 (signed char, unsigned int, unsigned short);
extern signed char (*v14) (signed char, unsigned int, unsigned short);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
unsigned char v17 (void);
unsigned char (*v18) (void) = v17;
extern signed short v19 (signed char, unsigned short, signed short, unsigned char);
extern signed short (*v20) (signed char, unsigned short, signed short, unsigned char);
unsigned char v21 (unsigned short, unsigned int);
unsigned char (*v22) (unsigned short, unsigned int) = v21;
signed short v23 (signed char);
signed short (*v24) (signed char) = v23;
extern void v25 (signed short, signed short);
extern void (*v26) (signed short, signed short);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v57 = 6;
signed int v56 = 2;
signed int v55 = 3;

signed short v23 (signed char v58)
{
history[history_index++] = (int)v58;
{
for (;;) {
unsigned int v61 = 6U;
signed int v60 = -1;
unsigned int v59 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v21 (unsigned short v62, unsigned int v63)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
signed char v66 = 0;
unsigned short v65 = 0;
signed int v64 = 1;
trace++;
switch (trace)
{
case 2: 
return 0;
default: abort ();
}
}
}
}

unsigned char v17 (void)
{
{
for (;;) {
signed int v69 = 0;
signed short v68 = -1;
signed int v67 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
