#include <stdlib.h>
extern unsigned short v1 (unsigned short, signed char);
extern unsigned short (*v2) (unsigned short, signed char);
extern signed char v3 (signed int, unsigned int);
extern signed char (*v4) (signed int, unsigned int);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern signed int v9 (unsigned int, unsigned short);
extern signed int (*v10) (unsigned int, unsigned short);
extern void v11 (signed char, unsigned int);
extern void (*v12) (signed char, unsigned int);
extern signed short v13 (unsigned short, unsigned int);
extern signed short (*v14) (unsigned short, unsigned int);
unsigned short v15 (unsigned short, unsigned int, signed int);
unsigned short (*v16) (unsigned short, unsigned int, signed int) = v15;
extern unsigned short v17 (signed char);
extern unsigned short (*v18) (signed char);
void v19 (unsigned short, unsigned short);
void (*v20) (unsigned short, unsigned short) = v19;
void v21 (signed int);
void (*v22) (signed int) = v21;
extern unsigned char v23 (unsigned char, signed char, signed char, unsigned int);
extern unsigned char (*v24) (unsigned char, signed char, signed char, unsigned int);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
unsigned char v29 (signed short);
unsigned char (*v30) (signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v54 = 1;
unsigned short v53 = 1;
unsigned int v52 = 1U;

unsigned char v29 (signed short v55)
{
history[history_index++] = (int)v55;
{
for (;;) {
signed int v58 = -1;
signed char v57 = 0;
signed char v56 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (signed int v59)
{
history[history_index++] = (int)v59;
{
for (;;) {
signed short v62 = -2;
unsigned int v61 = 5U;
unsigned short v60 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (unsigned short v63, unsigned short v64)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned char v67 = 3;
signed int v66 = -3;
signed char v65 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (unsigned short v68, unsigned int v69, signed int v70)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed char v73 = 3;
unsigned short v72 = 2;
unsigned short v71 = 0;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v74;
signed char v75;
signed char v76;
unsigned int v77;
unsigned char v78;
v74 = 6 - 3;
v75 = v73 - v73;
v76 = v73 + v73;
v77 = v69 - v69;
v78 = v23 (v74, v75, v76, v77);
history[history_index++] = (int)v78;
}
break;
case 3: 
{
signed char v79;
unsigned short v80;
v79 = v73 + v73;
v80 = v17 (v79);
history[history_index++] = (int)v80;
}
break;
case 5: 
return 7;
default: abort ();
}
}
}
}
