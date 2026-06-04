#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned short, signed int, unsigned int);
extern unsigned int (*v2) (unsigned short, signed int, unsigned int);
void v3 (unsigned short, unsigned char, signed short, unsigned int);
void (*v4) (unsigned short, unsigned char, signed short, unsigned int) = v3;
unsigned short v5 (signed char, unsigned char);
unsigned short (*v6) (signed char, unsigned char) = v5;
extern signed short v7 (unsigned short, signed int, signed int, unsigned char);
extern signed short (*v8) (unsigned short, signed int, signed int, unsigned char);
signed int v9 (void);
signed int (*v10) (void) = v9;
void v11 (void);
void (*v12) (void) = v11;
signed char v13 (void);
signed char (*v14) (void) = v13;
signed short v15 (unsigned int, signed short);
signed short (*v16) (unsigned int, signed short) = v15;
extern void v17 (signed char);
extern void (*v18) (signed char);
extern void v19 (signed short, unsigned char, unsigned char, signed int);
extern void (*v20) (signed short, unsigned char, unsigned char, signed int);
unsigned char v23 (void);
unsigned char (*v24) (void) = v23;
extern unsigned int v25 (signed char, unsigned char, unsigned short, unsigned char);
extern unsigned int (*v26) (signed char, unsigned char, unsigned short, unsigned char);
extern signed short v27 (unsigned int, signed char, unsigned short);
extern signed short (*v28) (unsigned int, signed char, unsigned short);
extern unsigned short v29 (signed short);
extern unsigned short (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -2;
signed char v32 = 2;
signed int v31 = 0;

unsigned char v23 (void)
{
{
for (;;) {
signed short v36 = -2;
signed char v35 = -3;
signed char v34 = 2;
trace++;
switch (trace)
{
case 1: 
return 3;
default: abort ();
}
}
}
}

signed short v15 (unsigned int v37, signed short v38)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
{
for (;;) {
unsigned char v41 = 1;
signed int v40 = -4;
signed int v39 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (void)
{
{
for (;;) {
signed char v44 = -1;
signed short v43 = 3;
signed int v42 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (void)
{
{
for (;;) {
signed int v47 = -4;
signed int v46 = 2;
signed char v45 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (void)
{
{
for (;;) {
signed char v50 = -4;
signed int v49 = -1;
unsigned int v48 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (signed char v51, unsigned char v52)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
unsigned short v55 = 1;
unsigned int v54 = 1U;
unsigned int v53 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (unsigned short v56, unsigned char v57, signed short v58, unsigned int v59)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned int v62 = 3U;
signed char v61 = -1;
unsigned char v60 = 1;
trace++;
switch (trace)
{
case 3: 
return;
case 5: 
return;
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
unsigned short v65;
signed int v66;
unsigned int v67;
unsigned int v68;
v65 = 5 - 3;
v66 = v31 + 2;
v67 = 7U + 7U;
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
