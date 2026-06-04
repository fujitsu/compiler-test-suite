#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
signed short v3 (signed int);
signed short (*v4) (signed int) = v3;
signed char v5 (unsigned int, unsigned short, signed char);
signed char (*v6) (unsigned int, unsigned short, signed char) = v5;
signed char v7 (void);
signed char (*v8) (void) = v7;
signed int v9 (signed short, signed int, unsigned char);
signed int (*v10) (signed short, signed int, unsigned char) = v9;
signed short v11 (unsigned short, signed char, signed int);
signed short (*v12) (unsigned short, signed char, signed int) = v11;
extern void v13 (void);
extern void (*v14) (void);
extern signed int v15 (unsigned int, signed char, unsigned char);
extern signed int (*v16) (unsigned int, signed char, unsigned char);
signed short v17 (void);
signed short (*v18) (void) = v17;
unsigned char v19 (signed int, unsigned char, unsigned int, unsigned char);
unsigned char (*v20) (signed int, unsigned char, unsigned int, unsigned char) = v19;
extern signed short v21 (void);
extern signed short (*v22) (void);
extern unsigned int v23 (signed short, unsigned char, unsigned short, signed int);
extern unsigned int (*v24) (signed short, unsigned char, unsigned short, signed int);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern void v27 (signed int);
extern void (*v28) (signed int);
extern void v29 (signed char);
extern void (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 2;
signed char v32 = -4;
signed short v31 = 3;

unsigned char v19 (signed int v34, unsigned char v35, unsigned int v36, unsigned char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned int v40 = 5U;
signed int v39 = -2;
signed int v38 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (void)
{
{
for (;;) {
unsigned int v43 = 0U;
unsigned short v42 = 6;
signed int v41 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (unsigned short v44, signed char v45, signed int v46)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
unsigned int v49 = 7U;
unsigned int v48 = 2U;
unsigned int v47 = 1U;
trace++;
switch (trace)
{
case 7: 
{
signed char v50;
v50 = -3 - v45;
v29 (v50);
}
break;
case 9: 
{
signed char v51;
v51 = -3 + v45;
v29 (v51);
}
break;
case 11: 
return -3;
default: abort ();
}
}
}
}

signed int v9 (signed short v52, signed int v53, unsigned char v54)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
unsigned int v57 = 3U;
unsigned char v56 = 0;
unsigned short v55 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (void)
{
{
for (;;) {
signed short v60 = 3;
unsigned int v59 = 7U;
signed short v58 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (unsigned int v61, unsigned short v62, signed char v63)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
signed char v66 = -3;
signed char v65 = -4;
signed int v64 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (signed int v67)
{
history[history_index++] = (int)v67;
{
for (;;) {
unsigned char v70 = 2;
signed short v69 = 0;
signed short v68 = 2;
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
unsigned short v73;
v73 = v1 ();
history[history_index++] = (int)v73;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
