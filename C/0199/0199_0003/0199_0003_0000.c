#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned int, signed int);
extern void (*v2) (unsigned int, signed int);
signed int v3 (unsigned int, unsigned int, unsigned short);
signed int (*v4) (unsigned int, unsigned int, unsigned short) = v3;
extern unsigned int v5 (signed int, signed char, unsigned char);
extern unsigned int (*v6) (signed int, signed char, unsigned char);
extern signed int v7 (unsigned short, signed char, unsigned int);
extern signed int (*v8) (unsigned short, signed char, unsigned int);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
signed int v13 (signed char, signed char);
signed int (*v14) (signed char, signed char) = v13;
extern void v15 (unsigned char, unsigned int, unsigned short);
extern void (*v16) (unsigned char, unsigned int, unsigned short);
extern unsigned int v17 (signed char, unsigned short, unsigned int, signed char);
extern unsigned int (*v18) (signed char, unsigned short, unsigned int, signed char);
unsigned short v19 (unsigned short, signed short, signed int, signed short);
unsigned short (*v20) (unsigned short, signed short, signed int, signed short) = v19;
signed char v21 (void);
signed char (*v22) (void) = v21;
void v23 (unsigned short, signed char);
void (*v24) (unsigned short, signed char) = v23;
extern signed int v25 (unsigned short, unsigned int, signed int, signed short);
extern signed int (*v26) (unsigned short, unsigned int, signed int, signed short);
void v27 (void);
void (*v28) (void) = v27;
signed int v29 (unsigned short, signed short, unsigned short);
signed int (*v30) (unsigned short, signed short, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 2;
signed int v32 = -2;
unsigned short v31 = 4;

signed int v29 (unsigned short v34, signed short v35, unsigned short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 6;
signed int v38 = -1;
unsigned char v37 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v27 (void)
{
{
for (;;) {
unsigned int v42 = 3U;
unsigned int v41 = 5U;
signed int v40 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v23 (unsigned short v43, signed char v44)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
unsigned int v47 = 5U;
unsigned int v46 = 4U;
unsigned short v45 = 4;
trace++;
switch (trace)
{
case 3: 
return;
default: abort ();
}
}
}
}

signed char v21 (void)
{
{
for (;;) {
unsigned int v50 = 3U;
unsigned char v49 = 4;
unsigned short v48 = 0;
trace++;
switch (trace)
{
case 10: 
return -1;
default: abort ();
}
}
}
}

unsigned short v19 (unsigned short v51, signed short v52, signed int v53, signed short v54)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
signed char v57 = 2;
unsigned short v56 = 4;
signed char v55 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (signed char v58, signed char v59)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned int v62 = 7U;
unsigned int v61 = 1U;
signed short v60 = 2;
trace++;
switch (trace)
{
case 1: 
return 0;
default: abort ();
}
}
}
}

signed int v3 (unsigned int v63, unsigned int v64, unsigned short v65)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
signed char v68 = 2;
unsigned char v67 = 5;
signed short v66 = 1;
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
unsigned int v71;
signed int v72;
v71 = 1U + 0U;
v72 = v32 + -2;
v1 (v71, v72);
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
