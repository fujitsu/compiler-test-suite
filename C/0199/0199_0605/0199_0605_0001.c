#include <stdlib.h>
extern unsigned short v1 (unsigned short, unsigned short, unsigned char, signed int);
extern unsigned short (*v2) (unsigned short, unsigned short, unsigned char, signed int);
void v3 (unsigned int);
void (*v4) (unsigned int) = v3;
extern unsigned int v5 (signed int, signed int, unsigned char, signed char);
extern unsigned int (*v6) (signed int, signed int, unsigned char, signed char);
extern signed int v7 (signed char, signed int);
extern signed int (*v8) (signed char, signed int);
extern unsigned short v9 (signed int, signed int);
extern unsigned short (*v10) (signed int, signed int);
extern signed char v11 (unsigned char, signed char, signed int);
extern signed char (*v12) (unsigned char, signed char, signed int);
signed int v13 (void);
signed int (*v14) (void) = v13;
extern unsigned char v15 (signed int, unsigned char, unsigned int, unsigned int);
extern unsigned char (*v16) (signed int, unsigned char, unsigned int, unsigned int);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern signed char v19 (signed short);
extern signed char (*v20) (signed short);
unsigned int v21 (signed char, signed char);
unsigned int (*v22) (signed char, signed char) = v21;
extern void v23 (void);
extern void (*v24) (void);
unsigned short v25 (unsigned int, signed short);
unsigned short (*v26) (unsigned int, signed short) = v25;
extern signed int v27 (void);
extern signed int (*v28) (void);
extern unsigned char v29 (unsigned int, unsigned short, signed char, unsigned int);
extern unsigned char (*v30) (unsigned int, unsigned short, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v56 = 7U;
signed int v55 = -4;
signed int v54 = -3;

unsigned short v25 (unsigned int v57, signed short v58)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
signed int v61 = 3;
unsigned short v60 = 0;
unsigned int v59 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v21 (signed char v62, signed char v63)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
unsigned short v66 = 0;
unsigned char v65 = 5;
unsigned int v64 = 2U;
trace++;
switch (trace)
{
case 4: 
return 1U;
case 6: 
return 5U;
case 8: 
return v64;
case 10: 
return v64;
default: abort ();
}
}
}
}

signed int v13 (void)
{
{
for (;;) {
signed short v69 = -4;
unsigned short v68 = 1;
unsigned short v67 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (unsigned int v70)
{
history[history_index++] = (int)v70;
{
for (;;) {
unsigned short v73 = 7;
signed char v72 = 2;
unsigned char v71 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
