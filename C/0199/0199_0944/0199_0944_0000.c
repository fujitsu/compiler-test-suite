#include <stdio.h>
#include <stdlib.h>
static signed int v1 (signed char, signed char, signed short, signed int);
static signed int (*v2) (signed char, signed char, signed short, signed int) = v1;
extern signed char v3 (void);
extern signed char (*v4) (void);
static signed int v5 (signed int, signed int);
static signed int (*v6) (signed int, signed int) = v5;
extern unsigned char v7 (unsigned int, signed char);
extern unsigned char (*v8) (unsigned int, signed char);
signed short v9 (void);
signed short (*v10) (void) = v9;
extern unsigned char v11 (unsigned int, unsigned char, unsigned char);
extern unsigned char (*v12) (unsigned int, unsigned char, unsigned char);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern signed short v15 (unsigned int, unsigned short, signed int);
extern signed short (*v16) (unsigned int, unsigned short, signed int);
unsigned char v17 (unsigned int);
unsigned char (*v18) (unsigned int) = v17;
extern signed int v19 (void);
extern signed int (*v20) (void);
void v21 (signed short, unsigned int, signed int);
void (*v22) (signed short, unsigned int, signed int) = v21;
unsigned char v23 (void);
unsigned char (*v24) (void) = v23;
extern signed int v25 (signed int, signed int, signed short, unsigned short);
extern signed int (*v26) (signed int, signed int, signed short, unsigned short);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 6;
signed int v32 = 3;
unsigned int v31 = 7U;

unsigned char v23 (void)
{
{
for (;;) {
unsigned char v36 = 6;
signed int v35 = -2;
signed short v34 = -1;
trace++;
switch (trace)
{
case 4: 
return 4;
default: abort ();
}
}
}
}

void v21 (signed short v37, unsigned int v38, signed int v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
signed int v42 = 1;
signed short v41 = 1;
signed char v40 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (unsigned int v43)
{
history[history_index++] = (int)v43;
{
for (;;) {
unsigned int v46 = 7U;
unsigned short v45 = 6;
unsigned char v44 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (void)
{
{
for (;;) {
signed short v49 = 1;
signed int v48 = -2;
unsigned int v47 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v5 (signed int v50, signed int v51)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
signed char v54 = -4;
unsigned short v53 = 7;
unsigned short v52 = 7;
trace++;
switch (trace)
{
case 11: 
return v51;
default: abort ();
}
}
}
}

static signed int v1 (signed char v55, signed char v56, signed short v57, signed int v58)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
signed int v61 = -3;
signed int v60 = 3;
signed char v59 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v62;
v62 = v13 ();
history[history_index++] = (int)v62;
}
break;
case 2: 
{
signed char v63;
v63 = v3 ();
history[history_index++] = (int)v63;
}
break;
case 10: 
{
signed int v64;
signed int v65;
signed int v66;
v64 = v58 - v61;
v65 = v58 - v58;
v66 = v5 (v64, v65);
history[history_index++] = (int)v66;
}
break;
case 12: 
return v61;
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
signed char v69;
signed char v70;
signed short v71;
signed int v72;
signed int v73;
v69 = -2 + 2;
v70 = -3 - 3;
v71 = 2 - 3;
v72 = 3 + -3;
v73 = v1 (v69, v70, v71, v72);
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
