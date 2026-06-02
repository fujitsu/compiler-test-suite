#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (unsigned short, signed short, unsigned int, signed char);
extern unsigned short (*v2) (unsigned short, signed short, unsigned int, signed char);
signed int v3 (void);
signed int (*v4) (void) = v3;
extern signed int v5 (signed short, unsigned int, signed int);
extern signed int (*v6) (signed short, unsigned int, signed int);
extern void v7 (unsigned short);
extern void (*v8) (unsigned short);
void v9 (unsigned short, signed int, unsigned int);
void (*v10) (unsigned short, signed int, unsigned int) = v9;
unsigned char v11 (signed int, unsigned int, signed short, signed short);
unsigned char (*v12) (signed int, unsigned int, signed short, signed short) = v11;
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
signed char v15 (signed int);
signed char (*v16) (signed int) = v15;
extern signed char v17 (unsigned char, unsigned int, unsigned char, unsigned short);
extern signed char (*v18) (unsigned char, unsigned int, unsigned char, unsigned short);
extern unsigned int v19 (unsigned int, unsigned int, unsigned char);
extern unsigned int (*v20) (unsigned int, unsigned int, unsigned char);
extern signed char v21 (unsigned int);
extern signed char (*v22) (unsigned int);
extern signed char v23 (void);
extern signed char (*v24) (void);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern unsigned int v29 (unsigned char, signed int, signed short, signed char);
extern unsigned int (*v30) (unsigned char, signed int, signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -4;
unsigned short v32 = 5;
signed int v31 = 1;

signed char v15 (signed int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned char v37 = 6;
signed short v36 = -2;
signed short v35 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (signed int v38, unsigned int v39, signed short v40, signed short v41)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed short v44 = -1;
signed short v43 = 1;
unsigned int v42 = 4U;
trace++;
switch (trace)
{
case 5: 
{
unsigned char v45;
v45 = v13 ();
history[history_index++] = (int)v45;
}
break;
case 7: 
{
unsigned short v46;
v46 = v25 ();
history[history_index++] = (int)v46;
}
break;
case 9: 
{
unsigned int v47;
v47 = v27 ();
history[history_index++] = (int)v47;
}
break;
case 11: 
return 0;
default: abort ();
}
}
}
}

void v9 (unsigned short v48, signed int v49, unsigned int v50)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
unsigned int v53 = 3U;
signed short v52 = -1;
unsigned char v51 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (void)
{
{
for (;;) {
signed short v56 = 1;
signed short v55 = -2;
signed char v54 = 3;
trace++;
switch (trace)
{
case 3: 
{
unsigned char v57;
v57 = v13 ();
history[history_index++] = (int)v57;
}
break;
case 13: 
return -2;
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
unsigned short v60;
signed short v61;
unsigned int v62;
signed char v63;
unsigned short v64;
v60 = v32 + 6;
v61 = 1 + 2;
v62 = 1U - 3U;
v63 = -1 - 1;
v64 = v1 (v60, v61, v62, v63);
history[history_index++] = (int)v64;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
