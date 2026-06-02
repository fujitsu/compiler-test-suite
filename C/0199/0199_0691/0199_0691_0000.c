#include <stdio.h>
#include <stdlib.h>
static unsigned short v1 (unsigned char);
static unsigned short (*v2) (unsigned char) = v1;
extern unsigned short v3 (signed char, signed int, unsigned int, signed short);
extern unsigned short (*v4) (signed char, signed int, unsigned int, signed short);
extern void v5 (void);
extern void (*v6) (void);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern unsigned char v9 (signed char);
extern unsigned char (*v10) (signed char);
extern signed char v11 (void);
extern signed char (*v12) (void);
unsigned char v13 (unsigned int, signed short, unsigned char);
unsigned char (*v14) (unsigned int, signed short, unsigned char) = v13;
static signed char v15 (unsigned char);
static signed char (*v16) (unsigned char) = v15;
signed short v17 (unsigned short, unsigned char, signed char, signed short);
signed short (*v18) (unsigned short, unsigned char, signed char, signed short) = v17;
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern unsigned short v21 (signed short);
extern unsigned short (*v22) (signed short);
unsigned int v23 (void);
unsigned int (*v24) (void) = v23;
extern signed short v25 (void);
extern signed short (*v26) (void);
void v27 (signed short, unsigned int, unsigned short, unsigned short);
void (*v28) (signed short, unsigned int, unsigned short, unsigned short) = v27;
extern signed char v29 (unsigned char, unsigned short, unsigned int);
extern signed char (*v30) (unsigned char, unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 4;
signed short v32 = 2;
signed char v31 = -2;

void v27 (signed short v34, unsigned int v35, unsigned short v36, unsigned short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed char v40 = -2;
signed short v39 = -3;
signed int v38 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v23 (void)
{
{
for (;;) {
unsigned char v43 = 4;
signed int v42 = -3;
unsigned int v41 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (unsigned short v44, unsigned char v45, signed char v46, signed short v47)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed short v50 = 3;
unsigned short v49 = 0;
unsigned short v48 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v15 (unsigned char v51)
{
history[history_index++] = (int)v51;
{
for (;;) {
signed short v54 = 2;
unsigned short v53 = 4;
unsigned char v52 = 0;
trace++;
switch (trace)
{
case 1: 
return 1;
case 3: 
return 0;
default: abort ();
}
}
}
}

unsigned char v13 (unsigned int v55, signed short v56, unsigned char v57)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
unsigned char v60 = 4;
signed char v59 = -4;
unsigned char v58 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v1 (unsigned char v61)
{
history[history_index++] = (int)v61;
{
for (;;) {
signed short v64 = 2;
signed short v63 = 2;
signed int v62 = -4;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v65;
signed char v66;
v65 = 6 - 0;
v66 = v15 (v65);
history[history_index++] = (int)v66;
}
break;
case 2: 
{
unsigned char v67;
signed char v68;
v67 = 4 - 3;
v68 = v15 (v67);
history[history_index++] = (int)v68;
}
break;
case 4: 
{
unsigned char v69;
v69 = v19 ();
history[history_index++] = (int)v69;
}
break;
case 6: 
{
signed char v70;
unsigned char v71;
v70 = -4 + 2;
v71 = v9 (v70);
history[history_index++] = (int)v71;
}
break;
case 12: 
return 6;
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
unsigned char v74;
unsigned short v75;
v74 = 4 + 1;
v75 = v1 (v74);
history[history_index++] = (int)v75;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
