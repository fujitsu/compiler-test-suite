#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
unsigned short v3 (unsigned char);
unsigned short (*v4) (unsigned char) = v3;
extern signed int v5 (signed int, signed int, signed char);
extern signed int (*v6) (signed int, signed int, signed char);
extern unsigned int v7 (signed short);
extern unsigned int (*v8) (signed short);
extern signed int v9 (unsigned short);
extern signed int (*v10) (unsigned short);
extern unsigned int v11 (signed char, signed char, unsigned short, signed char);
extern unsigned int (*v12) (signed char, signed char, unsigned short, signed char);
extern signed char v13 (unsigned int, unsigned char, signed char);
extern signed char (*v14) (unsigned int, unsigned char, signed char);
signed char v15 (void);
signed char (*v16) (void) = v15;
extern void v17 (void);
extern void (*v18) (void);
unsigned short v19 (void);
unsigned short (*v20) (void) = v19;
extern unsigned char v21 (signed int, unsigned short, signed char);
extern unsigned char (*v22) (signed int, unsigned short, signed char);
extern signed char v23 (void);
extern signed char (*v24) (void);
unsigned short v25 (signed int);
unsigned short (*v26) (signed int) = v25;
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v54 = -1;
signed short v53 = -2;
signed short v52 = 0;

unsigned short v25 (signed int v55)
{
history[history_index++] = (int)v55;
{
for (;;) {
signed char v58 = -4;
signed int v57 = -2;
unsigned short v56 = 2;
trace++;
switch (trace)
{
case 9: 
return v56;
default: abort ();
}
}
}
}

unsigned short v19 (void)
{
{
for (;;) {
signed short v61 = -1;
unsigned char v60 = 0;
unsigned char v59 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (void)
{
{
for (;;) {
unsigned char v64 = 4;
signed short v63 = -4;
signed char v62 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (unsigned char v65)
{
history[history_index++] = (int)v65;
{
for (;;) {
unsigned char v68 = 0;
unsigned char v67 = 6;
signed char v66 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
