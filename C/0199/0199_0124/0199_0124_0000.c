#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed char, unsigned short, signed int);
extern unsigned char (*v2) (signed char, unsigned short, signed int);
extern signed char v3 (unsigned short, unsigned int);
extern signed char (*v4) (unsigned short, unsigned int);
void v5 (signed int, unsigned char, signed short, unsigned char);
void (*v6) (signed int, unsigned char, signed short, unsigned char) = v5;
extern signed short v7 (unsigned int);
extern signed short (*v8) (unsigned int);
extern unsigned short v9 (unsigned char, unsigned char);
extern unsigned short (*v10) (unsigned char, unsigned char);
signed short v11 (void);
signed short (*v12) (void) = v11;
extern unsigned char v13 (signed short, signed int, unsigned char, signed int);
extern unsigned char (*v14) (signed short, signed int, unsigned char, signed int);
unsigned short v15 (signed char);
unsigned short (*v16) (signed char) = v15;
extern unsigned int v17 (unsigned int, signed short, signed char, signed short);
extern unsigned int (*v18) (unsigned int, signed short, signed char, signed short);
extern signed char v19 (void);
extern signed char (*v20) (void);
extern signed int v21 (void);
extern signed int (*v22) (void);
signed short v23 (signed short, unsigned short);
signed short (*v24) (signed short, unsigned short) = v23;
void v25 (void);
void (*v26) (void) = v25;
unsigned short v29 (signed int, signed short, unsigned char, signed int);
unsigned short (*v30) (signed int, signed short, unsigned char, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -1;
unsigned char v32 = 4;
unsigned char v31 = 1;

unsigned short v29 (signed int v34, signed short v35, unsigned char v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned int v40 = 7U;
unsigned int v39 = 5U;
unsigned char v38 = 5;
trace++;
switch (trace)
{
case 1: 
return 7;
case 3: 
return 5;
default: abort ();
}
}
}
}

void v25 (void)
{
{
for (;;) {
unsigned char v43 = 7;
unsigned int v42 = 7U;
unsigned int v41 = 0U;
trace++;
switch (trace)
{
case 9: 
return;
case 11: 
return;
default: abort ();
}
}
}
}

signed short v23 (signed short v44, unsigned short v45)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
signed char v48 = 0;
signed int v47 = 2;
unsigned short v46 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (signed char v49)
{
history[history_index++] = (int)v49;
{
for (;;) {
unsigned char v52 = 3;
signed short v51 = -2;
unsigned int v50 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (void)
{
{
for (;;) {
signed int v55 = 3;
unsigned short v54 = 3;
unsigned int v53 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (signed int v56, unsigned char v57, signed short v58, unsigned char v59)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned int v62 = 7U;
unsigned int v61 = 6U;
signed char v60 = -4;
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
signed char v65;
unsigned short v66;
signed int v67;
unsigned char v68;
v65 = -4 - 1;
v66 = 5 + 4;
v67 = -2 - v33;
v68 = v1 (v65, v66, v67);
history[history_index++] = (int)v68;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
