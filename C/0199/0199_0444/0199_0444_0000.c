#include <stdio.h>
#include <stdlib.h>
static signed int v1 (unsigned char, signed int);
static signed int (*v2) (unsigned char, signed int) = v1;
unsigned char v3 (void);
unsigned char (*v4) (void) = v3;
extern signed short v5 (signed char, unsigned char, unsigned short, signed short);
extern signed short (*v6) (signed char, unsigned char, unsigned short, signed short);
extern signed char v7 (void);
extern signed char (*v8) (void);
unsigned int v9 (unsigned short, unsigned int, unsigned short, signed char);
unsigned int (*v10) (unsigned short, unsigned int, unsigned short, signed char) = v9;
extern unsigned short v11 (unsigned char, signed char);
extern unsigned short (*v12) (unsigned char, signed char);
signed char v13 (unsigned short, signed char, unsigned short, signed char);
signed char (*v14) (unsigned short, signed char, unsigned short, signed char) = v13;
extern void v15 (unsigned char);
extern void (*v16) (unsigned char);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned short v19 (unsigned char);
extern unsigned short (*v20) (unsigned char);
extern unsigned char v21 (signed short, signed short);
extern unsigned char (*v22) (signed short, signed short);
extern signed int v23 (unsigned short, unsigned short);
extern signed int (*v24) (unsigned short, unsigned short);
void v25 (signed char, unsigned char, unsigned int);
void (*v26) (signed char, unsigned char, unsigned int) = v25;
extern unsigned char v27 (signed short, unsigned short);
extern unsigned char (*v28) (signed short, unsigned short);
extern signed short v29 (signed int, unsigned int);
extern signed short (*v30) (signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 3U;
signed short v32 = -3;
signed short v31 = 0;

void v25 (signed char v34, unsigned char v35, unsigned int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned short v39 = 7;
unsigned char v38 = 3;
signed char v37 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (unsigned short v40, signed char v41, unsigned short v42, signed char v43)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
unsigned char v46 = 0;
signed short v45 = 2;
unsigned short v44 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (unsigned short v47, unsigned int v48, unsigned short v49, signed char v50)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
signed int v53 = -4;
unsigned int v52 = 2U;
unsigned short v51 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (void)
{
{
for (;;) {
signed short v56 = -3;
signed char v55 = 1;
unsigned char v54 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v1 (unsigned char v57, signed int v58)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
signed char v61 = 1;
signed int v60 = -1;
unsigned char v59 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v62;
unsigned short v63;
signed int v64;
v62 = 7 + 2;
v63 = 2 - 1;
v64 = v23 (v62, v63);
history[history_index++] = (int)v64;
}
break;
case 18: 
return v60;
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
unsigned char v67;
signed int v68;
signed int v69;
v67 = 1 - 4;
v68 = 1 + -2;
v69 = v1 (v67, v68);
history[history_index++] = (int)v69;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
