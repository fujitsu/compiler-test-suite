#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed char, unsigned short);
extern void (*v2) (signed char, unsigned short);
extern signed short v3 (signed char, signed char, unsigned int);
extern signed short (*v4) (signed char, signed char, unsigned int);
static signed char v5 (signed char, unsigned short, unsigned char);
static signed char (*v6) (signed char, unsigned short, unsigned char) = v5;
extern void v7 (signed int, unsigned int, unsigned short, signed short);
extern void (*v8) (signed int, unsigned int, unsigned short, signed short);
extern unsigned char v9 (unsigned char, unsigned short);
extern unsigned char (*v10) (unsigned char, unsigned short);
static signed short v11 (unsigned char, unsigned int);
static signed short (*v12) (unsigned char, unsigned int) = v11;
void v13 (unsigned int);
void (*v14) (unsigned int) = v13;
extern signed char v15 (unsigned char, unsigned char);
extern signed char (*v16) (unsigned char, unsigned char);
extern unsigned short v17 (signed int);
extern unsigned short (*v18) (signed int);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
static signed int v21 (signed char);
static signed int (*v22) (signed char) = v21;
extern signed char v23 (unsigned short);
extern signed char (*v24) (unsigned short);
void v27 (signed short);
void (*v28) (signed short) = v27;
extern unsigned short v29 (signed char);
extern unsigned short (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 7U;
signed char v32 = 3;
signed int v31 = -3;

void v27 (signed short v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned char v37 = 3;
signed int v36 = 3;
signed char v35 = -2;
trace++;
switch (trace)
{
case 6: 
{
signed char v38;
unsigned short v39;
unsigned char v40;
signed char v41;
v38 = v35 - -4;
v39 = 7 - 7;
v40 = v37 - v37;
v41 = v5 (v38, v39, v40);
history[history_index++] = (int)v41;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}

static signed int v21 (signed char v42)
{
history[history_index++] = (int)v42;
{
for (;;) {
signed int v45 = -2;
signed char v44 = -2;
signed char v43 = 3;
trace++;
switch (trace)
{
case 11: 
return 1;
default: abort ();
}
}
}
}

void v13 (unsigned int v46)
{
history[history_index++] = (int)v46;
{
for (;;) {
signed int v49 = 0;
unsigned int v48 = 6U;
signed int v47 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v11 (unsigned char v50, unsigned int v51)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
signed char v54 = 0;
unsigned char v53 = 5;
unsigned short v52 = 2;
trace++;
switch (trace)
{
case 8: 
{
signed char v55;
unsigned short v56;
v55 = v54 - -2;
v56 = v29 (v55);
history[history_index++] = (int)v56;
}
break;
case 10: 
{
signed char v57;
signed int v58;
v57 = 0 - v54;
v58 = v21 (v57);
history[history_index++] = (int)v58;
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}

static signed char v5 (signed char v59, unsigned short v60, unsigned char v61)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
signed short v64 = 3;
unsigned char v63 = 3;
unsigned short v62 = 1;
trace++;
switch (trace)
{
case 7: 
{
unsigned char v65;
unsigned int v66;
signed short v67;
v65 = v63 + v63;
v66 = 6U + 0U;
v67 = v11 (v65, v66);
history[history_index++] = (int)v67;
}
break;
case 13: 
return 2;
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
signed char v70;
unsigned short v71;
v70 = v32 + 0;
v71 = 4 - 7;
v1 (v70, v71);
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
