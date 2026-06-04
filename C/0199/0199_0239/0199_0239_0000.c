#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed short v5 (signed int);
extern signed short (*v6) (signed int);
extern signed int v7 (void);
extern signed int (*v8) (void);
unsigned short v9 (signed char);
unsigned short (*v10) (signed char) = v9;
extern void v11 (signed short);
extern void (*v12) (signed short);
extern signed char v13 (unsigned short, unsigned int);
extern signed char (*v14) (unsigned short, unsigned int);
unsigned int v15 (unsigned short);
unsigned int (*v16) (unsigned short) = v15;
signed char v17 (signed char);
signed char (*v18) (signed char) = v17;
unsigned int v19 (signed short, signed char);
unsigned int (*v20) (signed short, signed char) = v19;
unsigned short v21 (unsigned int);
unsigned short (*v22) (unsigned int) = v21;
extern unsigned char v23 (signed short, signed short);
extern unsigned char (*v24) (signed short, signed short);
extern signed char v25 (void);
extern signed char (*v26) (void);
void v27 (unsigned short, signed int, unsigned int, signed int);
void (*v28) (unsigned short, signed int, unsigned int, signed int) = v27;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 3;
signed int v32 = -2;
unsigned int v31 = 5U;

void v27 (unsigned short v34, signed int v35, unsigned int v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = -3;
signed char v39 = -4;
signed short v38 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (unsigned int v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
unsigned short v44 = 0;
unsigned short v43 = 6;
unsigned short v42 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (signed short v45, signed char v46)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
signed int v49 = -4;
unsigned char v48 = 0;
signed short v47 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (signed char v50)
{
history[history_index++] = (int)v50;
{
for (;;) {
unsigned int v53 = 0U;
signed short v52 = 3;
signed char v51 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (unsigned short v54)
{
history[history_index++] = (int)v54;
{
for (;;) {
unsigned int v57 = 2U;
unsigned char v56 = 7;
signed short v55 = 2;
trace++;
switch (trace)
{
case 1: 
{
signed short v58;
signed short v59;
unsigned char v60;
v58 = v55 + v55;
v59 = v55 + v55;
v60 = v23 (v58, v59);
history[history_index++] = (int)v60;
}
break;
case 3: 
return 3U;
default: abort ();
}
}
}
}

unsigned short v9 (signed char v61)
{
history[history_index++] = (int)v61;
{
for (;;) {
unsigned short v64 = 5;
unsigned int v63 = 3U;
signed int v62 = 3;
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
signed short v67;
v67 = v1 ();
history[history_index++] = (int)v67;
}
} while (trace < 11);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
