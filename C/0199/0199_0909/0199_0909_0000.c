#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (unsigned char, signed short, signed short);
extern unsigned short (*v2) (unsigned char, signed short, signed short);
signed char v3 (signed int, unsigned char, unsigned char, signed short);
signed char (*v4) (signed int, unsigned char, unsigned char, signed short) = v3;
extern unsigned short v5 (unsigned int);
extern unsigned short (*v6) (unsigned int);
void v7 (unsigned short, unsigned char, unsigned int);
void (*v8) (unsigned short, unsigned char, unsigned int) = v7;
static unsigned char v9 (signed short, signed short);
static unsigned char (*v10) (signed short, signed short) = v9;
extern unsigned short v11 (signed int, unsigned int, unsigned char);
extern unsigned short (*v12) (signed int, unsigned int, unsigned char);
extern unsigned char v13 (unsigned int, unsigned short, signed char, signed short);
extern unsigned char (*v14) (unsigned int, unsigned short, signed char, signed short);
extern unsigned short v15 (unsigned char, signed short, signed int);
extern unsigned short (*v16) (unsigned char, signed short, signed int);
signed short v17 (signed char, signed short, unsigned short, signed int);
signed short (*v18) (signed char, signed short, unsigned short, signed int) = v17;
extern void v19 (void);
extern void (*v20) (void);
extern void v21 (signed int, unsigned int, unsigned char, unsigned char);
extern void (*v22) (signed int, unsigned int, unsigned char, unsigned char);
extern unsigned char v23 (unsigned short, signed short, signed char, signed short);
extern unsigned char (*v24) (unsigned short, signed short, signed char, signed short);
extern void v25 (unsigned char, unsigned short, signed short);
extern void (*v26) (unsigned char, unsigned short, signed short);
unsigned char v27 (unsigned int, unsigned char);
unsigned char (*v28) (unsigned int, unsigned char) = v27;
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 5;
signed char v32 = -3;
unsigned int v31 = 6U;

unsigned char v27 (unsigned int v34, unsigned char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed int v38 = 0;
unsigned char v37 = 1;
unsigned int v36 = 0U;
trace++;
switch (trace)
{
case 3: 
return v37;
default: abort ();
}
}
}
}

signed short v17 (signed char v39, signed short v40, unsigned short v41, signed int v42)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned char v45 = 7;
signed char v44 = 0;
unsigned char v43 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v9 (signed short v46, signed short v47)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed int v50 = -4;
unsigned char v49 = 0;
signed char v48 = -2;
trace++;
switch (trace)
{
case 6: 
return v49;
case 10: 
return 2;
default: abort ();
}
}
}
}

void v7 (unsigned short v51, unsigned char v52, unsigned int v53)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
signed char v56 = -2;
unsigned char v55 = 6;
unsigned int v54 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (signed int v57, unsigned char v58, unsigned char v59, signed short v60)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
signed int v63 = 1;
unsigned char v62 = 2;
signed char v61 = 1;
trace++;
switch (trace)
{
case 5: 
{
signed short v64;
signed short v65;
unsigned char v66;
v64 = v60 - v60;
v65 = v60 - v60;
v66 = v9 (v64, v65);
history[history_index++] = (int)v66;
}
break;
case 7: 
{
unsigned char v67;
v67 = v29 ();
history[history_index++] = (int)v67;
}
break;
case 9: 
{
signed short v68;
signed short v69;
unsigned char v70;
v68 = v60 + 3;
v69 = v60 + -1;
v70 = v9 (v68, v69);
history[history_index++] = (int)v70;
}
break;
case 11: 
return -1;
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
unsigned char v73;
signed short v74;
signed short v75;
unsigned short v76;
v73 = v33 + v33;
v74 = -2 - -2;
v75 = 2 + 1;
v76 = v1 (v73, v74, v75);
history[history_index++] = (int)v76;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
