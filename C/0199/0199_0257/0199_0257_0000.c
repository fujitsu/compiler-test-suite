#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned int v3 (signed short);
extern unsigned int (*v4) (signed short);
extern signed char v5 (unsigned short, unsigned char);
extern signed char (*v6) (unsigned short, unsigned char);
extern unsigned int v7 (signed short, unsigned short, unsigned int, unsigned int);
extern unsigned int (*v8) (signed short, unsigned short, unsigned int, unsigned int);
signed int v9 (unsigned short, unsigned int, signed int);
signed int (*v10) (unsigned short, unsigned int, signed int) = v9;
extern unsigned short v11 (signed char, unsigned char);
extern unsigned short (*v12) (signed char, unsigned char);
extern void v13 (unsigned short, signed int, unsigned int);
extern void (*v14) (unsigned short, signed int, unsigned int);
signed short v15 (void);
signed short (*v16) (void) = v15;
static unsigned short v17 (unsigned int, unsigned char, signed int, signed char);
static unsigned short (*v18) (unsigned int, unsigned char, signed int, signed char) = v17;
unsigned short v19 (signed short, signed char);
unsigned short (*v20) (signed short, signed char) = v19;
extern void v21 (unsigned char, signed short, signed char, unsigned int);
extern void (*v22) (unsigned char, signed short, signed char, unsigned int);
unsigned int v25 (signed char, signed short);
unsigned int (*v26) (signed char, signed short) = v25;
extern unsigned char v27 (unsigned int);
extern unsigned char (*v28) (unsigned int);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 3;
signed int v32 = -4;
unsigned short v31 = 4;

unsigned int v25 (signed char v34, signed short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed int v38 = -2;
unsigned short v37 = 4;
unsigned int v36 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (signed short v39, signed char v40)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned char v43 = 6;
signed int v42 = 2;
unsigned short v41 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v17 (unsigned int v44, unsigned char v45, signed int v46, signed char v47)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
unsigned short v50 = 7;
signed char v49 = -4;
unsigned short v48 = 7;
trace++;
switch (trace)
{
case 11: 
return v50;
default: abort ();
}
}
}
}

signed short v15 (void)
{
{
for (;;) {
signed int v53 = -2;
unsigned int v52 = 7U;
unsigned int v51 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (unsigned short v54, unsigned int v55, signed int v56)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
unsigned int v59 = 2U;
signed char v58 = 1;
unsigned char v57 = 1;
trace++;
switch (trace)
{
case 2: 
return v56;
case 10: 
{
unsigned int v60;
unsigned char v61;
signed int v62;
signed char v63;
unsigned short v64;
v60 = v55 - v55;
v61 = 6 + 5;
v62 = -3 - v56;
v63 = v58 - 0;
v64 = v17 (v60, v61, v62, v63);
history[history_index++] = (int)v64;
}
break;
case 12: 
return v56;
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
unsigned short v67;
v67 = v1 ();
history[history_index++] = (int)v67;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
