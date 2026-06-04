#include <stdio.h>
#include <stdlib.h>
static void v1 (unsigned short, unsigned short);
static void (*v2) (unsigned short, unsigned short) = v1;
extern unsigned int v3 (unsigned short, signed int, signed char);
extern unsigned int (*v4) (unsigned short, signed int, signed char);
signed int v5 (unsigned char, unsigned int, signed int);
signed int (*v6) (unsigned char, unsigned int, signed int) = v5;
extern signed short v7 (signed char, signed int, signed short);
extern signed short (*v8) (signed char, signed int, signed short);
extern void v9 (unsigned char, signed char, unsigned int);
extern void (*v10) (unsigned char, signed char, unsigned int);
extern unsigned char v11 (unsigned char, unsigned short);
extern unsigned char (*v12) (unsigned char, unsigned short);
extern void v13 (unsigned char, unsigned short, signed short, unsigned int);
extern void (*v14) (unsigned char, unsigned short, signed short, unsigned int);
extern unsigned char v15 (signed char, signed int);
extern unsigned char (*v16) (signed char, signed int);
extern void v17 (unsigned int, unsigned char, signed int);
extern void (*v18) (unsigned int, unsigned char, signed int);
extern void v19 (unsigned char, unsigned char, unsigned short, unsigned int);
extern void (*v20) (unsigned char, unsigned char, unsigned short, unsigned int);
unsigned short v23 (void);
unsigned short (*v24) (void) = v23;
signed int v25 (signed char, signed int);
signed int (*v26) (signed char, signed int) = v25;
signed int v27 (void);
signed int (*v28) (void) = v27;
unsigned char v29 (signed short, unsigned int);
unsigned char (*v30) (signed short, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -4;
unsigned short v32 = 1;
signed char v31 = 2;

unsigned char v29 (signed short v34, unsigned int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed char v38 = 2;
unsigned int v37 = 1U;
signed int v36 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v27 (void)
{
{
for (;;) {
unsigned int v41 = 7U;
unsigned short v40 = 7;
signed int v39 = 0;
trace++;
switch (trace)
{
case 3: 
return v39;
case 5: 
return -1;
case 7: 
return -2;
case 9: 
return -4;
case 11: 
return v39;
default: abort ();
}
}
}
}

signed int v25 (signed char v42, signed int v43)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
unsigned char v46 = 1;
unsigned short v45 = 4;
signed int v44 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v23 (void)
{
{
for (;;) {
signed int v49 = -2;
unsigned short v48 = 1;
signed char v47 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (unsigned char v50, unsigned int v51, signed int v52)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
unsigned char v55 = 2;
unsigned char v54 = 0;
unsigned int v53 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v1 (unsigned short v56, unsigned short v57)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
unsigned char v60 = 6;
unsigned char v59 = 3;
unsigned short v58 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v61;
signed int v62;
signed char v63;
unsigned int v64;
v61 = 5 + v56;
v62 = 3 + -1;
v63 = 0 + -1;
v64 = v3 (v61, v62, v63);
history[history_index++] = (int)v64;
}
break;
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
unsigned short v67;
unsigned short v68;
v67 = v32 + 1;
v68 = v32 - 6;
v1 (v67, v68);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
