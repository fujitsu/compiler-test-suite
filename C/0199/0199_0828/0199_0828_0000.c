#include <stdio.h>
#include <stdlib.h>
void v1 (unsigned short);
void (*v2) (unsigned short) = v1;
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned short v7 (signed int, signed int, unsigned int, signed int);
extern unsigned short (*v8) (signed int, signed int, unsigned int, signed int);
extern signed short v11 (void);
extern signed short (*v12) (void);
unsigned int v13 (unsigned short, signed int, unsigned char, unsigned char);
unsigned int (*v14) (unsigned short, signed int, unsigned char, unsigned char) = v13;
unsigned short v15 (unsigned char, unsigned char);
unsigned short (*v16) (unsigned char, unsigned char) = v15;
extern unsigned char v17 (unsigned short, unsigned int, signed char, unsigned int);
extern unsigned char (*v18) (unsigned short, unsigned int, signed char, unsigned int);
extern signed int v19 (signed int, signed int);
extern signed int (*v20) (signed int, signed int);
extern signed int v21 (void);
extern signed int (*v22) (void);
unsigned char v23 (signed short);
unsigned char (*v24) (signed short) = v23;
signed int v25 (unsigned char, unsigned char, unsigned int, signed char);
signed int (*v26) (unsigned char, unsigned char, unsigned int, signed char) = v25;
extern signed char v27 (unsigned int, signed short);
extern signed char (*v28) (unsigned int, signed short);
extern void v29 (signed short);
extern void (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 3U;
unsigned int v32 = 0U;
signed short v31 = 0;

signed int v25 (unsigned char v34, unsigned char v35, unsigned int v36, signed char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned int v40 = 1U;
signed char v39 = -2;
unsigned int v38 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (signed short v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
unsigned int v44 = 5U;
unsigned int v43 = 4U;
unsigned char v42 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (unsigned char v45, unsigned char v46)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
signed short v49 = 2;
unsigned char v48 = 1;
signed short v47 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (unsigned short v50, signed int v51, unsigned char v52, unsigned char v53)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
unsigned char v56 = 2;
signed char v55 = -3;
unsigned int v54 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (unsigned short v57)
{
history[history_index++] = (int)v57;
{
for (;;) {
unsigned short v60 = 5;
unsigned short v59 = 3;
signed short v58 = -1;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v61;
unsigned int v62;
signed char v63;
unsigned int v64;
unsigned char v65;
v61 = v60 + v60;
v62 = 6U + 4U;
v63 = 3 + 1;
v64 = 1U + 0U;
v65 = v17 (v61, v62, v63, v64);
history[history_index++] = (int)v65;
}
break;
case 8: 
{
unsigned int v66;
v66 = v3 ();
history[history_index++] = (int)v66;
}
break;
case 10: 
return;
case 14: 
return;
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned short v69;
v69 = 0 + 6;
v1 (v69);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
