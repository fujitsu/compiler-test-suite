#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed char, signed int, signed short);
extern void (*v2) (signed char, signed int, signed short);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
signed char v5 (unsigned short, signed short);
signed char (*v6) (unsigned short, signed short) = v5;
extern void v7 (unsigned short);
extern void (*v8) (unsigned short);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern signed short v11 (unsigned int);
extern signed short (*v12) (unsigned int);
extern signed char v13 (void);
extern signed char (*v14) (void);
signed char v15 (unsigned char, signed char, unsigned int);
signed char (*v16) (unsigned char, signed char, unsigned int) = v15;
signed short v19 (signed char, unsigned char, signed short, unsigned int);
signed short (*v20) (signed char, unsigned char, signed short, unsigned int) = v19;
unsigned int v21 (unsigned char);
unsigned int (*v22) (unsigned char) = v21;
void v23 (unsigned short, unsigned short);
void (*v24) (unsigned short, unsigned short) = v23;
extern unsigned short v25 (unsigned int, signed int, unsigned char);
extern unsigned short (*v26) (unsigned int, signed int, unsigned char);
extern signed char v27 (unsigned int, unsigned short, unsigned char, unsigned short);
extern signed char (*v28) (unsigned int, unsigned short, unsigned char, unsigned short);
unsigned int v29 (signed char, unsigned char);
unsigned int (*v30) (signed char, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -3;
unsigned char v32 = 4;
unsigned short v31 = 5;

unsigned int v29 (signed char v34, unsigned char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned short v38 = 6;
signed int v37 = -2;
unsigned short v36 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v23 (unsigned short v39, unsigned short v40)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned int v43 = 6U;
unsigned int v42 = 7U;
signed short v41 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v21 (unsigned char v44)
{
history[history_index++] = (int)v44;
{
for (;;) {
signed char v47 = 3;
signed short v46 = 2;
signed short v45 = -3;
trace++;
switch (trace)
{
case 2: 
return 3U;
default: abort ();
}
}
}
}

signed short v19 (signed char v48, unsigned char v49, signed short v50, unsigned int v51)
{
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
signed char v54 = -1;
unsigned short v53 = 0;
signed short v52 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (unsigned char v55, signed char v56, unsigned int v57)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
signed char v60 = -3;
signed short v59 = -1;
signed short v58 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (unsigned short v61, signed short v62)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed int v65 = 3;
unsigned int v64 = 2U;
signed short v63 = 2;
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
signed char v68;
signed int v69;
signed short v70;
v68 = -3 - -4;
v69 = 0 - 2;
v70 = -2 + 2;
v1 (v68, v69, v70);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
