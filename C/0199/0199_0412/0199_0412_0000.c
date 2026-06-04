#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned short, unsigned int, unsigned int, signed short);
extern void (*v2) (unsigned short, unsigned int, unsigned int, signed short);
extern void v3 (signed short, signed short, unsigned char);
extern void (*v4) (signed short, signed short, unsigned char);
extern unsigned char v5 (unsigned int, signed short);
extern unsigned char (*v6) (unsigned int, signed short);
signed int v7 (signed char, signed char, unsigned short, signed char);
signed int (*v8) (signed char, signed char, unsigned short, signed char) = v7;
extern void v9 (signed short, unsigned int, unsigned int, unsigned int);
extern void (*v10) (signed short, unsigned int, unsigned int, unsigned int);
extern signed short v11 (unsigned int, signed short);
extern signed short (*v12) (unsigned int, signed short);
unsigned int v13 (signed int, unsigned short, unsigned int);
unsigned int (*v14) (signed int, unsigned short, unsigned int) = v13;
extern unsigned char v15 (signed int, unsigned char, unsigned int, unsigned short);
extern unsigned char (*v16) (signed int, unsigned char, unsigned int, unsigned short);
unsigned short v17 (void);
unsigned short (*v18) (void) = v17;
extern unsigned char v19 (signed char, signed char, unsigned int);
extern unsigned char (*v20) (signed char, signed char, unsigned int);
extern signed short v21 (signed short, unsigned int, unsigned short);
extern signed short (*v22) (signed short, unsigned int, unsigned short);
void v23 (void);
void (*v24) (void) = v23;
extern unsigned short v25 (signed char, unsigned char);
extern unsigned short (*v26) (signed char, unsigned char);
unsigned int v27 (unsigned short, signed short);
unsigned int (*v28) (unsigned short, signed short) = v27;
extern unsigned char v29 (unsigned char, unsigned char, unsigned int, signed short);
extern unsigned char (*v30) (unsigned char, unsigned char, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 3U;
signed int v32 = 1;
unsigned int v31 = 4U;

unsigned int v27 (unsigned short v34, signed short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed short v38 = 1;
signed short v37 = -2;
signed int v36 = 2;
trace++;
switch (trace)
{
case 5: 
return 3U;
case 7: 
return 5U;
case 11: 
return 1U;
default: abort ();
}
}
}
}

void v23 (void)
{
{
for (;;) {
unsigned char v41 = 7;
unsigned char v40 = 7;
unsigned int v39 = 1U;
trace++;
switch (trace)
{
case 1: 
{
signed char v42;
unsigned char v43;
unsigned short v44;
v42 = -1 - 3;
v43 = v40 + 4;
v44 = v25 (v42, v43);
history[history_index++] = (int)v44;
}
break;
case 3: 
{
signed char v45;
unsigned char v46;
unsigned short v47;
v45 = 2 - 0;
v46 = v41 - v41;
v47 = v25 (v45, v46);
history[history_index++] = (int)v47;
}
break;
case 9: 
{
signed char v48;
unsigned char v49;
unsigned short v50;
v48 = -1 - -4;
v49 = 5 + v40;
v50 = v25 (v48, v49);
history[history_index++] = (int)v50;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

unsigned short v17 (void)
{
{
for (;;) {
unsigned char v53 = 6;
signed char v52 = 0;
unsigned int v51 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (signed int v54, unsigned short v55, unsigned int v56)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
unsigned short v59 = 3;
unsigned char v58 = 6;
signed char v57 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (signed char v60, signed char v61, unsigned short v62, signed char v63)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
signed short v66 = 0;
unsigned int v65 = 3U;
unsigned char v64 = 2;
trace++;
switch (trace)
{
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
unsigned int v70;
unsigned int v71;
signed short v72;
v69 = 2 + 7;
v70 = v31 + v33;
v71 = v31 + v31;
v72 = -3 + 0;
v1 (v69, v70, v71, v72);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
