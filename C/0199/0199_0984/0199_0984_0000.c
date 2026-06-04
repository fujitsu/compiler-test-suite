#include <stdio.h>
#include <stdlib.h>
static void v1 (unsigned char, signed short, unsigned int);
static void (*v2) (unsigned char, signed short, unsigned int) = v1;
extern unsigned int v3 (unsigned int, signed int, unsigned int);
extern unsigned int (*v4) (unsigned int, signed int, unsigned int);
void v5 (unsigned int);
void (*v6) (unsigned int) = v5;
signed char v7 (signed short, signed short, unsigned char, unsigned char);
signed char (*v8) (signed short, signed short, unsigned char, unsigned char) = v7;
extern unsigned char v9 (signed int);
extern unsigned char (*v10) (signed int);
void v11 (unsigned short, signed short, signed int, signed int);
void (*v12) (unsigned short, signed short, signed int, signed int) = v11;
extern unsigned short v13 (unsigned char, unsigned char);
extern unsigned short (*v14) (unsigned char, unsigned char);
extern signed short v15 (signed char);
extern signed short (*v16) (signed char);
extern unsigned int v17 (unsigned int, signed char);
extern unsigned int (*v18) (unsigned int, signed char);
extern unsigned char v19 (signed int, unsigned char);
extern unsigned char (*v20) (signed int, unsigned char);
extern signed short v21 (unsigned short);
extern signed short (*v22) (unsigned short);
signed int v23 (unsigned char, unsigned int, unsigned int);
signed int (*v24) (unsigned char, unsigned int, unsigned int) = v23;
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern signed int v27 (unsigned char);
extern signed int (*v28) (unsigned char);
extern unsigned short v29 (signed char, unsigned int, unsigned short);
extern unsigned short (*v30) (signed char, unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 2;
unsigned short v32 = 6;
unsigned int v31 = 1U;

signed int v23 (unsigned char v34, unsigned int v35, unsigned int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed char v39 = 0;
unsigned int v38 = 7U;
signed short v37 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (unsigned short v40, signed short v41, signed int v42, signed int v43)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
unsigned short v46 = 5;
signed char v45 = -2;
signed char v44 = -1;
trace++;
switch (trace)
{
case 5: 
{
unsigned char v47;
signed int v48;
v47 = 2 - 1;
v48 = v27 (v47);
history[history_index++] = (int)v48;
}
break;
case 7: 
{
unsigned char v49;
signed int v50;
v49 = 7 - 0;
v50 = v27 (v49);
history[history_index++] = (int)v50;
}
break;
case 9: 
{
unsigned char v51;
signed int v52;
v51 = 0 + 0;
v52 = v27 (v51);
history[history_index++] = (int)v52;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

signed char v7 (signed short v53, signed short v54, unsigned char v55, unsigned char v56)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
unsigned short v59 = 1;
unsigned short v58 = 5;
signed char v57 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (unsigned int v60)
{
history[history_index++] = (int)v60;
{
for (;;) {
signed int v63 = -2;
signed char v62 = 1;
signed int v61 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v1 (unsigned char v64, signed short v65, unsigned int v66)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
signed int v69 = 3;
unsigned char v68 = 5;
signed char v67 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v70;
signed char v71;
unsigned int v72;
v70 = 3U - v66;
v71 = v67 + -2;
v72 = v17 (v70, v71);
history[history_index++] = (int)v72;
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
unsigned char v75;
signed short v76;
unsigned int v77;
v75 = 4 + 3;
v76 = -3 - -1;
v77 = 0U + v31;
v1 (v75, v76, v77);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
