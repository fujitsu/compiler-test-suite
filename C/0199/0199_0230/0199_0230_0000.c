#include <stdio.h>
#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
void v7 (unsigned char, unsigned int, unsigned short);
void (*v8) (unsigned char, unsigned int, unsigned short) = v7;
extern signed short v9 (signed int);
extern signed short (*v10) (signed int);
extern void v11 (void);
extern void (*v12) (void);
signed short v13 (signed int, signed int, unsigned char);
signed short (*v14) (signed int, signed int, unsigned char) = v13;
signed char v15 (signed char, unsigned char);
signed char (*v16) (signed char, unsigned char) = v15;
static void v17 (signed char, unsigned short, unsigned short);
static void (*v18) (signed char, unsigned short, unsigned short) = v17;
extern signed short v19 (void);
extern signed short (*v20) (void);
extern unsigned short v23 (unsigned char, unsigned char, unsigned int);
extern unsigned short (*v24) (unsigned char, unsigned char, unsigned int);
extern unsigned short v25 (unsigned int, unsigned short);
extern unsigned short (*v26) (unsigned int, unsigned short);
extern unsigned int v27 (signed char);
extern unsigned int (*v28) (signed char);
void v29 (unsigned int, signed short, signed short, signed short);
void (*v30) (unsigned int, signed short, signed short, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 6;
unsigned short v32 = 2;
signed char v31 = -3;

void v29 (unsigned int v34, signed short v35, signed short v36, signed short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed char v40 = 2;
unsigned char v39 = 6;
signed short v38 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v17 (signed char v41, unsigned short v42, unsigned short v43)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed char v46 = -1;
unsigned int v45 = 6U;
signed int v44 = -4;
trace++;
switch (trace)
{
case 6: 
return;
default: abort ();
}
}
}
}

signed char v15 (signed char v47, unsigned char v48)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
unsigned int v51 = 5U;
signed short v50 = -3;
signed short v49 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (signed int v52, signed int v53, unsigned char v54)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
signed char v57 = -4;
unsigned char v56 = 3;
signed short v55 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (unsigned char v58, unsigned int v59, unsigned short v60)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
signed int v63 = 3;
signed char v62 = 2;
unsigned int v61 = 7U;
trace++;
switch (trace)
{
case 3: 
{
unsigned char v64;
unsigned char v65;
unsigned int v66;
unsigned short v67;
v64 = v58 - 4;
v65 = v58 - 7;
v66 = v59 - v61;
v67 = v23 (v64, v65, v66);
history[history_index++] = (int)v67;
}
break;
case 5: 
{
signed char v68;
unsigned short v69;
unsigned short v70;
v68 = -4 - v62;
v69 = v60 - v60;
v70 = v60 + v60;
v17 (v68, v69, v70);
}
break;
case 7: 
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
v1 ();
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
