#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed short);
extern signed short (*v2) (signed short);
void v3 (signed short, signed char, unsigned int);
void (*v4) (signed short, signed char, unsigned int) = v3;
extern void v5 (unsigned int, unsigned char, signed int, unsigned short);
extern void (*v6) (unsigned int, unsigned char, signed int, unsigned short);
unsigned int v7 (unsigned char, signed char, unsigned int);
unsigned int (*v8) (unsigned char, signed char, unsigned int) = v7;
void v9 (unsigned char, unsigned char, unsigned int, unsigned short);
void (*v10) (unsigned char, unsigned char, unsigned int, unsigned short) = v9;
extern signed int v11 (void);
extern signed int (*v12) (void);
extern void v13 (signed int, signed short, signed char);
extern void (*v14) (signed int, signed short, signed char);
signed char v17 (signed int);
signed char (*v18) (signed int) = v17;
extern void v19 (unsigned int, signed int, signed short);
extern void (*v20) (unsigned int, signed int, signed short);
extern unsigned short v21 (signed int, unsigned char);
extern unsigned short (*v22) (signed int, unsigned char);
extern unsigned short v23 (unsigned int, signed int);
extern unsigned short (*v24) (unsigned int, signed int);
extern unsigned short v25 (unsigned short);
extern unsigned short (*v26) (unsigned short);
static unsigned int v27 (unsigned short);
static unsigned int (*v28) (unsigned short) = v27;
signed int v29 (signed char, unsigned int, unsigned short);
signed int (*v30) (signed char, unsigned int, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 1;
unsigned char v32 = 7;
unsigned int v31 = 7U;

signed int v29 (signed char v34, unsigned int v35, unsigned short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 1;
signed int v38 = 1;
unsigned int v37 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v27 (unsigned short v40)
{
history[history_index++] = (int)v40;
{
for (;;) {
signed int v43 = -1;
signed int v42 = 3;
unsigned short v41 = 6;
trace++;
switch (trace)
{
case 4: 
return 2U;
default: abort ();
}
}
}
}

signed char v17 (signed int v44)
{
history[history_index++] = (int)v44;
{
for (;;) {
signed char v47 = 2;
signed char v46 = -2;
signed short v45 = 0;
trace++;
switch (trace)
{
case 1: 
return v47;
default: abort ();
}
}
}
}

void v9 (unsigned char v48, unsigned char v49, unsigned int v50, unsigned short v51)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
signed int v54 = 3;
unsigned int v53 = 5U;
unsigned char v52 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (unsigned char v55, signed char v56, unsigned int v57)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
signed int v60 = 0;
signed int v59 = 3;
unsigned char v58 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (signed short v61, signed char v62, unsigned int v63)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
signed char v66 = -4;
signed char v65 = -2;
signed short v64 = 1;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v67;
unsigned int v68;
v67 = 5 - 1;
v68 = v27 (v67);
history[history_index++] = (int)v68;
}
break;
case 5: 
{
signed int v69;
v69 = v11 ();
history[history_index++] = (int)v69;
}
break;
case 13: 
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
signed short v72;
signed short v73;
v72 = -1 + -4;
v73 = v1 (v72);
history[history_index++] = (int)v73;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
