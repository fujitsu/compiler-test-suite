#include <stdlib.h>
unsigned int v1 (unsigned int, unsigned short);
unsigned int (*v2) (unsigned int, unsigned short) = v1;
signed int v3 (unsigned short, signed short, signed char);
signed int (*v4) (unsigned short, signed short, signed char) = v3;
extern signed short v5 (signed short, unsigned short, unsigned char, unsigned int);
extern signed short (*v6) (signed short, unsigned short, unsigned char, unsigned int);
extern signed short v7 (unsigned int);
extern signed short (*v8) (unsigned int);
void v9 (void);
void (*v10) (void) = v9;
extern signed short v11 (unsigned char, unsigned char, unsigned short);
extern signed short (*v12) (unsigned char, unsigned char, unsigned short);
extern signed int v13 (signed short, signed int, signed char, unsigned char);
extern signed int (*v14) (signed short, signed int, signed char, unsigned char);
extern void v15 (unsigned char, unsigned short);
extern void (*v16) (unsigned char, unsigned short);
unsigned char v17 (signed int, unsigned char, signed char, unsigned char);
unsigned char (*v18) (signed int, unsigned char, signed char, unsigned char) = v17;
extern signed short v19 (signed int);
extern signed short (*v20) (signed int);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern signed short v23 (signed int, unsigned char, unsigned short);
extern signed short (*v24) (signed int, unsigned char, unsigned short);
extern signed short v25 (signed char);
extern signed short (*v26) (signed char);
extern signed char v27 (signed char, unsigned short);
extern signed char (*v28) (signed char, unsigned short);
extern unsigned short v29 (unsigned int);
extern unsigned short (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v50 = -4;
unsigned char v49 = 5;
signed int v48 = 0;

unsigned char v17 (signed int v51, unsigned char v52, signed char v53, unsigned char v54)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
unsigned int v57 = 4U;
unsigned int v56 = 1U;
unsigned int v55 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (void)
{
{
for (;;) {
unsigned short v60 = 6;
signed int v59 = 0;
signed short v58 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (unsigned short v61, signed short v62, signed char v63)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
signed short v66 = 1;
unsigned int v65 = 7U;
signed short v64 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (unsigned int v67, unsigned short v68)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
signed short v71 = -1;
signed short v70 = -2;
signed char v69 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v72;
signed short v73;
v72 = v67 + 3U;
v73 = v7 (v72);
history[history_index++] = (int)v73;
}
break;
case 14: 
return v67;
default: abort ();
}
}
}
}
