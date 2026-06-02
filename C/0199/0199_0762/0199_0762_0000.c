#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned int);
extern unsigned int (*v2) (unsigned int);
extern unsigned short v3 (unsigned short, unsigned short);
extern unsigned short (*v4) (unsigned short, unsigned short);
extern signed char v5 (signed char, signed int);
extern signed char (*v6) (signed char, signed int);
void v7 (signed short, signed short, unsigned int, unsigned char);
void (*v8) (signed short, signed short, unsigned int, unsigned char) = v7;
extern unsigned short v9 (unsigned int, unsigned char, unsigned int);
extern unsigned short (*v10) (unsigned int, unsigned char, unsigned int);
void v11 (signed short);
void (*v12) (signed short) = v11;
extern signed char v13 (unsigned char);
extern signed char (*v14) (unsigned char);
void v15 (signed int, unsigned int);
void (*v16) (signed int, unsigned int) = v15;
unsigned short v17 (signed short, unsigned int, unsigned char);
unsigned short (*v18) (signed short, unsigned int, unsigned char) = v17;
extern signed char v19 (void);
extern signed char (*v20) (void);
unsigned short v21 (unsigned short);
unsigned short (*v22) (unsigned short) = v21;
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
static signed char v25 (void);
static signed char (*v26) (void) = v25;
extern signed int v27 (unsigned int);
extern signed int (*v28) (unsigned int);
extern unsigned int v29 (unsigned char, signed char);
extern unsigned int (*v30) (unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -2;
unsigned short v32 = 4;
signed int v31 = 2;

static signed char v25 (void)
{
{
for (;;) {
signed int v36 = -4;
unsigned int v35 = 1U;
signed char v34 = -2;
trace++;
switch (trace)
{
case 10: 
return 2;
default: abort ();
}
}
}
}

unsigned short v21 (unsigned short v37)
{
history[history_index++] = (int)v37;
{
for (;;) {
unsigned int v40 = 4U;
unsigned int v39 = 3U;
signed int v38 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (signed short v41, unsigned int v42, unsigned char v43)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed short v46 = 1;
signed char v45 = 0;
unsigned char v44 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (signed int v47, unsigned int v48)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
unsigned int v51 = 5U;
signed short v50 = 3;
signed char v49 = -1;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v52;
v52 = v23 ();
history[history_index++] = (int)v52;
}
break;
case 3: 
{
unsigned int v53;
v53 = v23 ();
history[history_index++] = (int)v53;
}
break;
case 5: 
{
unsigned int v54;
v54 = v23 ();
history[history_index++] = (int)v54;
}
break;
case 7: 
{
unsigned int v55;
v55 = v23 ();
history[history_index++] = (int)v55;
}
break;
case 9: 
{
signed char v56;
v56 = v25 ();
history[history_index++] = (int)v56;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

void v11 (signed short v57)
{
history[history_index++] = (int)v57;
{
for (;;) {
unsigned short v60 = 1;
signed short v59 = -3;
unsigned short v58 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (signed short v61, signed short v62, unsigned int v63, unsigned char v64)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned short v67 = 4;
signed char v66 = -3;
unsigned int v65 = 3U;
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
unsigned int v70;
unsigned int v71;
v70 = 5U - 6U;
v71 = v1 (v70);
history[history_index++] = (int)v71;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
