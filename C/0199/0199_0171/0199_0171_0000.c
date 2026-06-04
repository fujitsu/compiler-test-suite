#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned short);
extern void (*v2) (unsigned short);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern unsigned char v5 (unsigned short, signed short);
extern unsigned char (*v6) (unsigned short, signed short);
extern unsigned char v7 (unsigned int, signed int);
extern unsigned char (*v8) (unsigned int, signed int);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern void v11 (void);
extern void (*v12) (void);
unsigned char v13 (void);
unsigned char (*v14) (void) = v13;
extern unsigned char v15 (signed int);
extern unsigned char (*v16) (signed int);
unsigned int v17 (unsigned short, unsigned char, signed short, unsigned char);
unsigned int (*v18) (unsigned short, unsigned char, signed short, unsigned char) = v17;
void v19 (unsigned short);
void (*v20) (unsigned short) = v19;
void v21 (signed short, signed int);
void (*v22) (signed short, signed int) = v21;
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
signed int v25 (signed char, signed char, signed int);
signed int (*v26) (signed char, signed char, signed int) = v25;
extern unsigned char v27 (signed char, signed short, unsigned int);
extern unsigned char (*v28) (signed char, signed short, unsigned int);
extern unsigned int v29 (signed short, unsigned char);
extern unsigned int (*v30) (signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 1U;
unsigned short v32 = 4;
signed char v31 = 1;

signed int v25 (signed char v34, signed char v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed int v39 = 2;
unsigned int v38 = 4U;
signed char v37 = 0;
trace++;
switch (trace)
{
case 2: 
{
signed int v40;
unsigned char v41;
v40 = v36 - -4;
v41 = v15 (v40);
history[history_index++] = (int)v41;
}
break;
case 4: 
return v39;
case 6: 
return -4;
case 8: 
{
signed int v42;
unsigned char v43;
v42 = 1 - -1;
v43 = v15 (v42);
history[history_index++] = (int)v43;
}
break;
case 10: 
{
signed int v44;
unsigned char v45;
v44 = v39 - v39;
v45 = v15 (v44);
history[history_index++] = (int)v45;
}
break;
case 12: 
return v36;
default: abort ();
}
}
}
}

void v21 (signed short v46, signed int v47)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed int v50 = 0;
signed char v49 = 0;
unsigned int v48 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (unsigned short v51)
{
history[history_index++] = (int)v51;
{
for (;;) {
unsigned int v54 = 5U;
signed short v53 = -1;
signed int v52 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (unsigned short v55, unsigned char v56, signed short v57, unsigned char v58)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
signed int v61 = -1;
signed short v60 = -3;
unsigned short v59 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (void)
{
{
for (;;) {
unsigned short v64 = 1;
unsigned short v63 = 4;
unsigned int v62 = 7U;
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
unsigned short v67;
v67 = v32 - v32;
v1 (v67);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
