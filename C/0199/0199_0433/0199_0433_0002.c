#include <stdlib.h>
extern signed short v1 (unsigned int, unsigned char, signed short);
extern signed short (*v2) (unsigned int, unsigned char, signed short);
signed short v3 (void);
signed short (*v4) (void) = v3;
extern unsigned int v5 (unsigned char, unsigned short, signed int, signed int);
extern unsigned int (*v6) (unsigned char, unsigned short, signed int, signed int);
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern unsigned char v9 (signed short, unsigned int, signed int);
extern unsigned char (*v10) (signed short, unsigned int, signed int);
extern unsigned short v11 (unsigned int, signed short, unsigned int, signed short);
extern unsigned short (*v12) (unsigned int, signed short, unsigned int, signed short);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern signed short v17 (unsigned int, unsigned char);
extern signed short (*v18) (unsigned int, unsigned char);
extern unsigned short v19 (signed char, unsigned short, signed int, unsigned int);
extern unsigned short (*v20) (signed char, unsigned short, signed int, unsigned int);
signed short v21 (signed short, signed short, unsigned char);
signed short (*v22) (signed short, signed short, unsigned char) = v21;
extern signed int v23 (unsigned char, unsigned short, signed char);
extern signed int (*v24) (unsigned char, unsigned short, signed char);
void v25 (void);
void (*v26) (void) = v25;
signed short v27 (unsigned short, signed short);
signed short (*v28) (unsigned short, signed short) = v27;
signed int v29 (void);
signed int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v57 = 0;
unsigned short v56 = 2;
signed int v55 = -3;

signed int v29 (void)
{
{
for (;;) {
signed short v60 = -3;
unsigned int v59 = 4U;
signed short v58 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v27 (unsigned short v61, signed short v62)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed short v65 = 1;
unsigned int v64 = 5U;
signed int v63 = -2;
trace++;
switch (trace)
{
case 3: 
return -3;
default: abort ();
}
}
}
}

void v25 (void)
{
{
for (;;) {
signed short v68 = 2;
signed int v67 = 2;
unsigned short v66 = 3;
trace++;
switch (trace)
{
case 6: 
return;
case 8: 
return;
default: abort ();
}
}
}
}

signed short v21 (signed short v69, signed short v70, unsigned char v71)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed char v74 = 2;
unsigned short v73 = 4;
unsigned short v72 = 3;
trace++;
switch (trace)
{
case 1: 
return v70;
default: abort ();
}
}
}
}

signed short v3 (void)
{
{
for (;;) {
unsigned int v77 = 0U;
signed int v76 = -3;
signed int v75 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
