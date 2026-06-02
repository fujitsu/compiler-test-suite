#include <stdlib.h>
extern signed short v1 (unsigned char, unsigned char, unsigned int);
extern signed short (*v2) (unsigned char, unsigned char, unsigned int);
extern signed int v3 (unsigned char, signed char);
extern signed int (*v4) (unsigned char, signed char);
unsigned char v5 (signed int, unsigned char, signed int);
unsigned char (*v6) (signed int, unsigned char, signed int) = v5;
signed short v7 (unsigned char, signed char);
signed short (*v8) (unsigned char, signed char) = v7;
extern unsigned short v9 (unsigned int, signed int);
extern unsigned short (*v10) (unsigned int, signed int);
extern signed short v11 (unsigned char);
extern signed short (*v12) (unsigned char);
unsigned int v13 (unsigned short, unsigned short);
unsigned int (*v14) (unsigned short, unsigned short) = v13;
extern signed short v15 (void);
extern signed short (*v16) (void);
signed short v17 (unsigned int, signed short);
signed short (*v18) (unsigned int, signed short) = v17;
signed int v19 (signed short, unsigned int);
signed int (*v20) (signed short, unsigned int) = v19;
extern void v21 (unsigned short, unsigned short);
extern void (*v22) (unsigned short, unsigned short);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v53 = 0;
unsigned char v52 = 2;
signed int v51 = 2;

signed int v19 (signed short v54, unsigned int v55)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
signed char v58 = -1;
signed int v57 = 3;
unsigned char v56 = 3;
trace++;
switch (trace)
{
case 1: 
return v57;
default: abort ();
}
}
}
}

signed short v17 (unsigned int v59, signed short v60)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
unsigned short v63 = 6;
unsigned char v62 = 5;
signed int v61 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (unsigned short v64, unsigned short v65)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
signed char v68 = -4;
unsigned int v67 = 3U;
unsigned int v66 = 5U;
trace++;
switch (trace)
{
case 3: 
return 4U;
default: abort ();
}
}
}
}

signed short v7 (unsigned char v69, signed char v70)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed int v73 = -2;
unsigned char v72 = 3;
unsigned int v71 = 5U;
trace++;
switch (trace)
{
case 9: 
return -3;
default: abort ();
}
}
}
}

unsigned char v5 (signed int v74, unsigned char v75, signed int v76)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
signed short v79 = -3;
unsigned char v78 = 7;
signed int v77 = 1;
trace++;
switch (trace)
{
case 5: 
return v75;
default: abort ();
}
}
}
}
