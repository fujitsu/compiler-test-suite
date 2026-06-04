#include <stdlib.h>
signed short v1 (signed short);
signed short (*v2) (signed short) = v1;
extern unsigned int v3 (signed short);
extern unsigned int (*v4) (signed short);
void v5 (signed char);
void (*v6) (signed char) = v5;
extern unsigned int v7 (unsigned char);
extern unsigned int (*v8) (unsigned char);
signed int v9 (unsigned char);
signed int (*v10) (unsigned char) = v9;
extern unsigned char v11 (unsigned int, signed char);
extern unsigned char (*v12) (unsigned int, signed char);
extern unsigned char v13 (unsigned int);
extern unsigned char (*v14) (unsigned int);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern void v17 (signed int, unsigned char);
extern void (*v18) (signed int, unsigned char);
extern signed int v19 (unsigned short, signed char, unsigned short);
extern signed int (*v20) (unsigned short, signed char, unsigned short);
void v23 (unsigned char, signed short, unsigned int);
void (*v24) (unsigned char, signed short, unsigned int) = v23;
extern signed int v25 (signed short, unsigned char, unsigned short);
extern signed int (*v26) (signed short, unsigned char, unsigned short);
extern unsigned short v27 (signed short, signed int, signed int, signed int);
extern unsigned short (*v28) (signed short, signed int, signed int, signed int);
extern void v29 (unsigned int, signed char, unsigned int);
extern void (*v30) (unsigned int, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v40 = 4U;
signed char v39 = -2;
signed char v38 = -4;

void v23 (unsigned char v41, signed short v42, unsigned int v43)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
unsigned int v46 = 1U;
unsigned short v45 = 5;
signed char v44 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (unsigned char v47)
{
history[history_index++] = (int)v47;
{
for (;;) {
signed char v50 = 3;
unsigned int v49 = 3U;
signed short v48 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (signed char v51)
{
history[history_index++] = (int)v51;
{
for (;;) {
signed int v54 = -3;
signed int v53 = -2;
unsigned int v52 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed short v55)
{
history[history_index++] = (int)v55;
{
for (;;) {
signed char v58 = 2;
unsigned int v57 = 3U;
unsigned short v56 = 7;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v59;
unsigned char v60;
v59 = v57 - 4U;
v60 = v13 (v59);
history[history_index++] = (int)v60;
}
break;
case 14: 
return v55;
default: abort ();
}
}
}
}
