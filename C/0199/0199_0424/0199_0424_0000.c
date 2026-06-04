#include <stdio.h>
#include <stdlib.h>
static signed char v1 (signed int, signed char, unsigned char);
static signed char (*v2) (signed int, signed char, unsigned char) = v1;
extern void v3 (void);
extern void (*v4) (void);
unsigned int v5 (unsigned char, unsigned int);
unsigned int (*v6) (unsigned char, unsigned int) = v5;
extern signed int v7 (signed short, unsigned int, unsigned int);
extern signed int (*v8) (signed short, unsigned int, unsigned int);
extern signed int v9 (unsigned int, unsigned int, signed char, unsigned char);
extern signed int (*v10) (unsigned int, unsigned int, signed char, unsigned char);
extern signed short v11 (unsigned short);
extern signed short (*v12) (unsigned short);
unsigned char v13 (signed short, signed int);
unsigned char (*v14) (signed short, signed int) = v13;
static unsigned int v15 (unsigned short, unsigned short, unsigned int, unsigned char);
static unsigned int (*v16) (unsigned short, unsigned short, unsigned int, unsigned char) = v15;
extern unsigned short v17 (signed short, signed int);
extern unsigned short (*v18) (signed short, signed int);
void v19 (unsigned short, unsigned short);
void (*v20) (unsigned short, unsigned short) = v19;
extern signed short v21 (signed short);
extern signed short (*v22) (signed short);
extern signed int v23 (signed char, signed short);
extern signed int (*v24) (signed char, signed short);
extern signed short v25 (unsigned short, signed short);
extern signed short (*v26) (unsigned short, signed short);
extern unsigned int v27 (signed short, unsigned short, signed char, unsigned short);
extern unsigned int (*v28) (signed short, unsigned short, signed char, unsigned short);
extern signed short v29 (signed short, unsigned short, signed short, signed int);
extern signed short (*v30) (signed short, unsigned short, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -3;
signed int v32 = -4;
signed short v31 = -1;

void v19 (unsigned short v34, unsigned short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned char v38 = 6;
signed short v37 = -2;
signed char v36 = 1;
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

static unsigned int v15 (unsigned short v39, unsigned short v40, unsigned int v41, unsigned char v42)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed short v45 = 3;
unsigned int v44 = 3U;
unsigned char v43 = 2;
trace++;
switch (trace)
{
case 3: 
return v41;
default: abort ();
}
}
}
}

unsigned char v13 (signed short v46, signed int v47)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed int v50 = 1;
signed char v49 = 2;
unsigned int v48 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (unsigned char v51, unsigned int v52)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
signed char v55 = -1;
unsigned int v54 = 2U;
unsigned int v53 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v1 (signed int v56, signed char v57, unsigned char v58)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
{
for (;;) {
signed int v61 = 3;
signed int v60 = -1;
signed char v59 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v62;
signed short v63;
v62 = 3 + 6;
v63 = v11 (v62);
history[history_index++] = (int)v63;
}
break;
case 2: 
{
unsigned short v64;
unsigned short v65;
unsigned int v66;
unsigned char v67;
unsigned int v68;
v64 = 3 + 6;
v65 = 0 - 5;
v66 = 1U + 1U;
v67 = 3 + 6;
v68 = v15 (v64, v65, v66, v67);
history[history_index++] = (int)v68;
}
break;
case 4: 
{
unsigned int v69;
unsigned int v70;
signed char v71;
unsigned char v72;
signed int v73;
v69 = 3U + 6U;
v70 = 7U + 5U;
v71 = v57 + v59;
v72 = 7 + 1;
v73 = v9 (v69, v70, v71, v72);
history[history_index++] = (int)v73;
}
break;
case 14: 
return 3;
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
signed int v76;
signed char v77;
unsigned char v78;
signed char v79;
v76 = 3 + 0;
v77 = -4 - -3;
v78 = 5 + 2;
v79 = v1 (v76, v77, v78);
history[history_index++] = (int)v79;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
