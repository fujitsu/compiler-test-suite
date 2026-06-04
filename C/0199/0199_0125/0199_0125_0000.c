#include <stdio.h>
#include <stdlib.h>
static signed short v1 (unsigned short, unsigned int, signed int, signed int);
static signed short (*v2) (unsigned short, unsigned int, signed int, signed int) = v1;
extern void v3 (signed int, signed short);
extern void (*v4) (signed int, signed short);
unsigned int v5 (signed char, unsigned short, unsigned short);
unsigned int (*v6) (signed char, unsigned short, unsigned short) = v5;
extern unsigned short v7 (unsigned short);
extern unsigned short (*v8) (unsigned short);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern signed short v11 (signed char, unsigned int);
extern signed short (*v12) (signed char, unsigned int);
unsigned int v13 (unsigned char, signed char, unsigned short);
unsigned int (*v14) (unsigned char, signed char, unsigned short) = v13;
unsigned char v15 (signed int, signed char, signed int, unsigned int);
unsigned char (*v16) (signed int, signed char, signed int, unsigned int) = v15;
extern unsigned int v17 (unsigned char, unsigned char);
extern unsigned int (*v18) (unsigned char, unsigned char);
extern signed char v19 (signed int, unsigned int);
extern signed char (*v20) (signed int, unsigned int);
extern unsigned char v21 (unsigned short);
extern unsigned char (*v22) (unsigned short);
void v23 (unsigned int, signed char, unsigned int);
void (*v24) (unsigned int, signed char, unsigned int) = v23;
signed char v25 (signed char);
signed char (*v26) (signed char) = v25;
extern void v27 (unsigned char);
extern void (*v28) (unsigned char);
extern unsigned char v29 (unsigned int, signed char);
extern unsigned char (*v30) (unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 3U;
signed int v32 = -4;
unsigned char v31 = 5;

signed char v25 (signed char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned int v37 = 5U;
unsigned char v36 = 6;
signed int v35 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v23 (unsigned int v38, signed char v39, unsigned int v40)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
signed int v43 = 2;
unsigned short v42 = 2;
signed short v41 = 3;
trace++;
switch (trace)
{
case 5: 
{
unsigned char v44;
v44 = 1 - 3;
v27 (v44);
}
break;
case 7: 
{
unsigned char v45;
v45 = 1 - 7;
v27 (v45);
}
break;
case 9: 
return;
case 11: 
return;
default: abort ();
}
}
}
}

unsigned char v15 (signed int v46, signed char v47, signed int v48, unsigned int v49)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
signed char v52 = -1;
signed int v51 = 0;
unsigned int v50 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v13 (unsigned char v53, signed char v54, unsigned short v55)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
signed int v58 = -1;
signed short v57 = -4;
unsigned short v56 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (signed char v59, unsigned short v60, unsigned short v61)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
signed short v64 = -2;
signed int v63 = -4;
signed char v62 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v1 (unsigned short v65, unsigned int v66, signed int v67, signed int v68)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
signed char v71 = -2;
signed short v70 = -3;
signed int v69 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v72;
unsigned short v73;
v72 = v65 - v65;
v73 = v7 (v72);
history[history_index++] = (int)v73;
}
break;
case 14: 
return -2;
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
unsigned short v76;
unsigned int v77;
signed int v78;
signed int v79;
signed short v80;
v76 = 1 + 2;
v77 = 1U + 3U;
v78 = v32 + v32;
v79 = 1 + -1;
v80 = v1 (v76, v77, v78, v79);
history[history_index++] = (int)v80;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
