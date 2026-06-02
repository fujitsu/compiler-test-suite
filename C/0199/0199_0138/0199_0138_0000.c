#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed char, unsigned int, unsigned int, unsigned int);
extern unsigned char (*v2) (signed char, unsigned int, unsigned int, unsigned int);
extern signed char v3 (signed int, unsigned char, unsigned int, unsigned char);
extern signed char (*v4) (signed int, unsigned char, unsigned int, unsigned char);
unsigned short v5 (void);
unsigned short (*v6) (void) = v5;
extern signed char v7 (signed short, unsigned short);
extern signed char (*v8) (signed short, unsigned short);
extern signed char v9 (signed char, unsigned short, unsigned int);
extern signed char (*v10) (signed char, unsigned short, unsigned int);
static void v11 (void);
static void (*v12) (void) = v11;
unsigned short v13 (unsigned char, signed short, unsigned char);
unsigned short (*v14) (unsigned char, signed short, unsigned char) = v13;
signed short v15 (signed char, signed short);
signed short (*v16) (signed char, signed short) = v15;
extern signed char v17 (signed short, unsigned char);
extern signed char (*v18) (signed short, unsigned char);
extern unsigned short v19 (signed int, signed char, signed short, unsigned short);
extern unsigned short (*v20) (signed int, signed char, signed short, unsigned short);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern unsigned int v23 (signed int, unsigned short);
extern unsigned int (*v24) (signed int, unsigned short);
void v25 (void);
void (*v26) (void) = v25;
unsigned short v27 (signed char);
unsigned short (*v28) (signed char) = v27;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 2;
signed char v32 = 1;
unsigned short v31 = 0;

unsigned short v27 (signed char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned int v37 = 7U;
signed int v36 = 3;
unsigned char v35 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v25 (void)
{
{
for (;;) {
signed int v40 = 3;
unsigned short v39 = 7;
signed char v38 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (signed char v41, signed short v42)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed char v45 = -1;
signed short v44 = 1;
signed int v43 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (unsigned char v46, signed short v47, unsigned char v48)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
unsigned char v51 = 7;
signed short v50 = 1;
unsigned short v49 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v11 (void)
{
{
for (;;) {
signed short v54 = 2;
signed short v53 = 2;
unsigned char v52 = 7;
trace++;
switch (trace)
{
case 2: 
return;
case 4: 
{
signed short v55;
unsigned char v56;
signed char v57;
v55 = v54 - v53;
v56 = 5 - 7;
v57 = v17 (v55, v56);
history[history_index++] = (int)v57;
}
break;
case 10: 
{
signed short v58;
unsigned char v59;
signed char v60;
v58 = 3 - v54;
v59 = 6 - v52;
v60 = v17 (v58, v59);
history[history_index++] = (int)v60;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

unsigned short v5 (void)
{
{
for (;;) {
unsigned int v63 = 1U;
unsigned char v62 = 4;
unsigned int v61 = 2U;
trace++;
switch (trace)
{
case 1: 
{
v11 ();
}
break;
case 3: 
{
v11 ();
}
break;
case 13: 
return 5;
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
signed char v66;
unsigned int v67;
unsigned int v68;
unsigned int v69;
unsigned char v70;
v66 = v32 - -1;
v67 = 7U + 1U;
v68 = 7U - 5U;
v69 = 2U + 2U;
v70 = v1 (v66, v67, v68, v69);
history[history_index++] = (int)v70;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
