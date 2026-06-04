#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned int, signed short, unsigned int, signed short);
extern unsigned char (*v2) (unsigned int, signed short, unsigned int, signed short);
extern unsigned int v3 (unsigned char, unsigned char);
extern unsigned int (*v4) (unsigned char, unsigned char);
unsigned int v5 (unsigned short, signed short, unsigned short, signed int);
unsigned int (*v6) (unsigned short, signed short, unsigned short, signed int) = v5;
unsigned int v7 (unsigned char);
unsigned int (*v8) (unsigned char) = v7;
extern signed int v9 (unsigned int, signed char, signed int);
extern signed int (*v10) (unsigned int, signed char, signed int);
extern unsigned int v11 (signed char);
extern unsigned int (*v12) (signed char);
extern unsigned char v13 (signed int);
extern unsigned char (*v14) (signed int);
unsigned char v15 (void);
unsigned char (*v16) (void) = v15;
signed short v17 (unsigned char, unsigned int, unsigned short);
signed short (*v18) (unsigned char, unsigned int, unsigned short) = v17;
signed char v19 (signed char);
signed char (*v20) (signed char) = v19;
void v21 (void);
void (*v22) (void) = v21;
extern unsigned char v23 (unsigned char, signed short);
extern unsigned char (*v24) (unsigned char, signed short);
extern signed int v25 (signed short, signed char, signed char);
extern signed int (*v26) (signed short, signed char, signed char);
extern signed short v27 (signed int, unsigned char, unsigned char, signed int);
extern signed short (*v28) (signed int, unsigned char, unsigned char, signed int);
void v29 (signed short, unsigned short, unsigned int);
void (*v30) (signed short, unsigned short, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -3;
signed short v32 = -2;
signed short v31 = 1;

void v29 (signed short v34, unsigned short v35, unsigned int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned short v39 = 3;
signed short v38 = -3;
unsigned short v37 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (void)
{
{
for (;;) {
unsigned int v42 = 4U;
unsigned int v41 = 5U;
signed char v40 = -2;
trace++;
switch (trace)
{
case 5: 
return;
case 7: 
return;
default: abort ();
}
}
}
}

signed char v19 (signed char v43)
{
history[history_index++] = (int)v43;
{
for (;;) {
unsigned char v46 = 2;
signed char v45 = -3;
unsigned short v44 = 2;
trace++;
switch (trace)
{
case 3: 
return v45;
default: abort ();
}
}
}
}

signed short v17 (unsigned char v47, unsigned int v48, unsigned short v49)
{
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
history[history_index++] = (int)v49;
{
for (;;) {
unsigned char v52 = 3;
signed short v51 = 2;
signed short v50 = -1;
trace++;
switch (trace)
{
case 9: 
{
unsigned char v53;
signed short v54;
unsigned char v55;
v53 = v52 - 3;
v54 = v50 - 2;
v55 = v23 (v53, v54);
history[history_index++] = (int)v55;
}
break;
case 13: 
return v50;
default: abort ();
}
}
}
}

unsigned char v15 (void)
{
{
for (;;) {
unsigned short v58 = 4;
signed int v57 = 3;
signed char v56 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (unsigned char v59)
{
history[history_index++] = (int)v59;
{
for (;;) {
signed char v62 = -4;
signed short v61 = -1;
unsigned int v60 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (unsigned short v63, signed short v64, unsigned short v65, signed int v66)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
signed char v69 = -4;
unsigned char v68 = 4;
unsigned int v67 = 4U;
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
unsigned int v72;
signed short v73;
unsigned int v74;
signed short v75;
unsigned char v76;
v72 = 2U - 6U;
v73 = v32 - v31;
v74 = 0U - 5U;
v75 = v31 - 0;
v76 = v1 (v72, v73, v74, v75);
history[history_index++] = (int)v76;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
